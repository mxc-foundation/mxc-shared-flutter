import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class AppBarPage extends StatefulWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  State<AppBarPage> createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  Widget adaptiveView() => ColoredBox(
        color: ColorsTheme.of(context).boxComponents,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              top: 50,
              bottom: 45,
              left: 60,
              right: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'App bars',
                  style: FontTheme.of(context).veryBig().copyWith(fontSize: 48),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Standard / based on background color',
                      style: FontTheme.of(context).big(),
                    ),
                    const AppBarView(),
                    const SizedBox(height: 50),
                    Text(
                      'Dark theme',
                      style: FontTheme.of(context).big(),
                    ),
                    MxcTheme.fromOption(
                      option: MxcThemeOption.night,
                      child: const AppBarView(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return adaptiveView();
  }
}

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 1000),
          child: Wrap(
            runAlignment: WrapAlignment.spaceBetween,
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 20,
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 350),
                color: ColorsTheme.of(context).secondaryBackground,
                child: MxcAppBar.back(text: 'Title'),
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 350),
                color: ColorsTheme.of(context).secondaryBackground,
                child: MxcAppBar.back(
                  text: 'Title',
                  action: MxcAppBarButton.text('Skip', onTap: () {}),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
        ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 1000),
          child: Wrap(
            runAlignment: WrapAlignment.spaceBetween,
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 20,
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 350),
                color: ColorsTheme.of(context).primaryBackground,
                child: MxcAppBar.back(
                  text: 'Title',
                  action: MxcAppBarButton.icon(
                    Icons.settings,
                    onTap: () {},
                  ),
                ),
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 350),
                color: ColorsTheme.of(context).primaryBackground,
                child: MxcAppBar.custom(
                  padding: const EdgeInsets.only(
                    top: 17,
                    bottom: 22,
                    left: 20,
                    right: 20,
                  ),
                  title: Center(
                    child: Image(
                      image: ImagesTheme.of(context).logoMxc,
                      height: 40,
                    ),
                  ),
                  leading: MxcAppBarButton.icon(
                    FontAwesomeIcons.calculator,
                    onTap: () {},
                  ),
                  action: MxcAppBarButton.icon(
                    Icons.settings,
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
