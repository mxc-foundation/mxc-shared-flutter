import 'package:example/features/auth/auth_presenter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({Key? key}) : super(key: key);

  Widget supernodesNotLoaded() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget pickSupernode(AuthState state, WidgetRef ref) => ListView.builder(
        itemCount: state.supernodes!.length,
        itemBuilder: (ctx, i) => ListTile(
          title: Text(state.supernodes![i].name),
          onTap: () => ref
              .read(AuthPresenter.actions)
              .pickSupernode(state.supernodes![i]),
        ),
      );

  Widget login(
    WidgetRef ref,
    TextEditingController loginController,
    TextEditingController passwordController,
  ) {
    return Column(
      children: [
        TextButton(
          onPressed: () => ref.read(AuthPresenter.actions).resetSupernode(),
          child: const Text('Back'),
        ),
        TextField(
          controller: loginController,
          decoration: const InputDecoration(
            labelText: 'Login',
          ),
        ),
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
        ),
        TextButton(
          onPressed: () => ref.read(AuthPresenter.actions).login(
                'captcha',
                loginController.text,
                passwordController.text,
              ),
          child: const Text('Login'),
        ),
      ],
    );
  }

  Widget logOut(
    WidgetRef ref,
  ) =>
      Center(
        child: TextButton(
          onPressed: () => ref.read(AuthPresenter.actions).logOut(),
          child: const Text('Log out'),
        ),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(AuthPresenter.store);
    final loginController = useTextEditingController();
    final passwordController = useTextEditingController();

    late final Widget child;

    if (state.loggedIn) {
      child = logOut(ref);
    } else if (state.supernodes == null) {
      child = supernodesNotLoaded();
    } else if (state.pickedSupernode == null) {
      child = pickSupernode(state, ref);
    } else {
      child = login(ref, loginController, passwordController);
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Authentication')),
      body: child,
    );
  }
}
