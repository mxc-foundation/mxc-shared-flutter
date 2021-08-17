import 'package:example/app_bar.dart';
import 'package:example/colors.dart';
import 'package:example/input.dart';
import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

import 'buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MxcTheme.fromOption(
      option: MxcThemeOption.day,
      child: Builder(
        builder: (context) => MaterialApp(
          title: 'Flutter Demo',
          theme: MxcTheme.of(context).toThemeData(),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: TabBarView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ColorsPage(),
          InputPage(),
          AppBarPage(),
          ButtonsPage(),
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Colors.amber.shade800,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () => controller.animateTo(controller.index - 1),
              icon: Icon(Icons.arrow_back, color: Colors.grey.shade100),
            ),
            IconButton(
              onPressed: () => controller.animateTo(controller.index + 1),
              icon: Icon(Icons.arrow_forward, color: Colors.grey.shade100),
            ),
          ],
        ),
      ),
    );
  }
}
