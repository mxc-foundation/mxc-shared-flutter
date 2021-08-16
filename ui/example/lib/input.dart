import 'package:example/utils.dart';
import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool mobileDarkMode = false;

  Widget mobileView() {
    final theme = MxcThemeData.fromOption(
      mobileDarkMode ? MxcThemeOption.night : MxcThemeOption.day,
    );
    return MxcTheme(
      data: theme,
      child: ColoredBox(
        color: theme.colors.boxComponents,
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(
                top: 40,
                left: 8,
                right: 8,
                bottom: 80,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 46),
                      child: Text(
                        'Inputs',
                        style: theme.fonts.veryBig(),
                      ),
                    ),
                    InputPageCard(showBackground: false),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 30,
              child: MxcCircleButton.icon(
                key: null,
                icon: Icons.dark_mode,
                onTap: () => setState(() => mobileDarkMode = !mobileDarkMode),
                filled: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget desktopView() => SingleChildScrollView(
        child: Container(
          color: ColorsTheme.of(context).boxComponents,
          padding: const EdgeInsets.only(
            top: 50,
            bottom: 45,
            left: 32,
            right: 32,
          ),
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 46),
                child: Text(
                  'Inputs',
                  style: FontTheme.of(context).veryBig().copyWith(fontSize: 48),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: InputPageCard(),
                  ),
                  Expanded(
                    child: MxcTheme.fromOption(
                      option: MxcThemeOption.night,
                      child: InputPageCard(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cnstr) =>
          cnstr.maxWidth < 750 ? mobileView() : desktopView(),
    );
  }
}

class InputPageCard extends StatefulWidget {
  final bool showBackground;
  const InputPageCard({
    Key? key,
    this.showBackground = true,
  }) : super(key: key);

  @override
  State<InputPageCard> createState() => _InputPageCardState();
}

class _InputPageCardState extends State<InputPageCard> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 =
      TextEditingController(text: 'Entered text');

  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.showBackground
          ? BoxDecoration(
              color: ColorsTheme.of(context).boxComponents,
              borderRadius: BorderRadius.circular(15),
            )
          : null,
      padding: EdgeInsets.all(46),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Default',
            style: FontTheme.of(context).big(),
          ),
          SizedBox(height: 10),
          MxcTextField(
            key: null,
            label: 'Label text',
            hint: 'Hint text',
            controller: controller1,
          ),
          MxcTextField(
            key: null,
            label: 'Label text',
            hint: 'Hint text',
            button: MxcTextFieldButton(
              icon: FontAwesomeIcons.addressBook,
              onTap: () {},
            ),
            controller: controller1,
          ),
          SizedBox(height: 30),
          Text(
            'Selected',
            style: FontTheme.of(context).big(),
          ),
          SizedBox(height: 10),
          MxcTextField(
            key: null,
            label: 'Label text',
            hint: 'Hint text',
            focusNode: AlwaysFocusedNode(),
            controller: controller1,
          ),
          MxcTextField(
            key: null,
            label: 'Label text',
            hint: 'Hint text',
            focusNode: AlwaysFocusedNode(),
            button: MxcTextFieldButton(
              icon: FontAwesomeIcons.addressBook,
              onTap: () {},
            ),
            controller: controller1,
          ),
          Text(
            'If you place cursor, it will be here forever. This happens because of always focus hack',
            style: FontTheme.of(context).small.label(),
          ),
          SizedBox(height: 30),
          Text(
            'Entered',
            style: FontTheme.of(context).big(),
          ),
          SizedBox(height: 10),
          MxcTextField(
            key: null,
            label: 'Label text',
            hint: 'Hint text',
            controller: controller2,
          ),
          MxcTextField(
            key: null,
            label: 'Label text',
            hint: 'Hint text',
            button: MxcTextFieldButton(
              icon: FontAwesomeIcons.addressBook,
              onTap: () {},
            ),
            controller: controller2,
          ),
        ],
      ),
    );
  }
}
