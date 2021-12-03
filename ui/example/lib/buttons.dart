import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MxcTheme.fromOption(
      option: darkMode ? MxcThemeOption.night : MxcThemeOption.day,
      child: Builder(
        builder: (context) => Container(
          color: ColorsTheme.of(context).secondaryBackground,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    right: 32,
                    bottom: 80,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text(
                          'Buttons and more',
                          style: FontTheme.of(context).h3(),
                        ),
                      ),
                      const SizedBox(height: 55),
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: ButtonsRow(),
                      ),
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
                  onTap: () => setState(() => darkMode = !darkMode),
                  filled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonsRow extends StatefulWidget {
  const ButtonsRow({Key? key}) : super(key: key);

  @override
  State<ButtonsRow> createState() => _ButtonsRowState();
}

class _ButtonsRowState extends State<ButtonsRow> {
  final TextEditingController controller = TextEditingController();

  int option = 0;

  Color optionToColor(int option) {
    switch (option) {
      case 0:
        return ColorsTheme.of(context).mxcBlue;
      case 1:
        return ColorsTheme.of(context).dhxBlue;
      case 2:
        return ColorsTheme.of(context).dhxPurple;
      case 3:
        return ColorsTheme.of(context).minerHealthRed;
      case 4:
        return ColorsTheme.of(context).btcYellow;
      default:
        throw Exception('Unknown option passed $option');
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 10,
            decoration: BoxDecoration(
              color: optionToColor(option),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var i = 0; i < 5; i++) ...[
                        InkWell(
                          onTap: () => setState(() => option = i),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: option == i
                                  ? Border.all(
                                      color: optionToColor((i + 3) % 5),
                                      width: 2,
                                    )
                                  : null,
                              boxShadow: [
                                MxcBoxShadow(
                                  color: ColorsTheme.of(context).mxcBlue05,
                                ),
                              ],
                              color: optionToColor(i),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20)
                      ],
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                MxcScopedTheme(
                  data: MxcScopedThemeData(primaryColor: optionToColor(option)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        runSpacing: 5,
                        children: [
                          SizedBox(
                            width: 343,
                            child: MxcPrimaryButton(
                              key: null,
                              title: 'Primary Button',
                              onTap: () {},
                            ),
                          ),
                          const SizedBox(width: 19),
                          const SizedBox(
                            width: 343,
                            child: MxcPrimaryButton(
                              key: null,
                              title: 'Primary Button Disabled',
                              onTap: null,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        runSpacing: 5,
                        children: [
                          SizedBox(
                            width: 343,
                            child: MxcSecondaryButton(
                              key: null,
                              title: 'Secondary Button',
                              onTap: () {},
                            ),
                          ),
                          const SizedBox(width: 19),
                          const SizedBox(
                            width: 343,
                            child: MxcSecondaryButton(
                              key: null,
                              title: 'Secondary Button Disabled',
                              onTap: null,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        runSpacing: 5,
                        children: [
                          Container(
                            width: 343,
                            padding: const EdgeInsets.all(10),
                            color: ColorsTheme.of(context).textLabel,
                            child: MxcOutlinedButton(
                              key: null,
                              title: 'Outlined Button',
                              onTap: () {},
                            ),
                          ),
                          const SizedBox(width: 19),
                          Container(
                            width: 343,
                            padding: const EdgeInsets.all(10),
                            child: const MxcOutlinedButton(
                              key: null,
                              title: 'Outlined Button Disabled',
                              onTap: null,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        runSpacing: 5,
                        children: [
                          SizedBox(
                            width: 250,
                            child: MxcSegmentationTab(
                              key: null,
                              labels: const ['lorem', 'ipsum'],
                              onChanged: (_) {},
                            ),
                          ),
                          SizedBox(
                            width: 250,
                            child: PageIndicator(
                              key: null,
                              length: 5,
                              selectedPage: 3,
                              onSelected: (_) {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        runSpacing: 5,
                        children: [
                          MxcCircleButton.image(
                            key: null,
                            image: ImagesTheme.of(context).fuel,
                            filled: true,
                            onTap: () {},
                          ),
                          const SizedBox(width: 19),
                          MxcCircleButton.image(
                            key: null,
                            image: ImagesTheme.of(context).iconMine,
                            onTap: () {},
                          ),
                          const SizedBox(width: 19),
                          const MxcCircleButton.icon(
                            key: null,
                            icon: Icons.arrow_forward,
                            onTap: null,
                          ),
                          const SizedBox(width: 19),
                          MxcCircleButton.icon(
                            key: null,
                            icon: Icons.arrow_forward_ios,
                            onTap: () {},
                          ),
                          const SizedBox(width: 19),
                          MxcCircleButton.image(
                            key: null,
                            image: ImagesTheme.of(context).gateways,
                            filled: true,
                            onTap: () {},
                          ),
                          const SizedBox(width: 19),
                          MxcSwitch(
                            key: null,
                            value: false,
                            onChanged: (_) {},
                          ),
                          MxcSwitch(
                            key: null,
                            value: true,
                            onChanged: (_) {},
                          ),
                          const MxcSwitch(
                            key: null,
                            value: true,
                            onChanged: null,
                          ),
                          MxcCheckbox(
                            key: null,
                            value: false,
                            onChanged: (_) {},
                          ),
                          MxcCheckbox(
                            key: null,
                            value: null,
                            tristate: true,
                            onChanged: (_) {},
                          ),
                          MxcCheckbox(
                            key: null,
                            value: true,
                            onChanged: (_) {},
                          ),
                          const MxcCheckbox(
                            key: null,
                            value: true,
                            onChanged: null,
                          ),
                        ],
                      ),
                      Wrap(
                        runSpacing: 5,
                        children: [
                          SizedBox(
                            width: 200,
                            child: MxcSlider(
                              key: null,
                              value: 0.12,
                              onChanged: (_) {},
                            ),
                          ),
                          const SizedBox(width: 15),
                          const SizedBox(
                            width: 200,
                            child: MxcSlider.loading(
                              key: null,
                            ),
                          ),
                          const SizedBox(width: 15),
                          SizedBox(
                            width: 200,
                            child: MxcSlider(
                              key: null,
                              value: 0.5,
                              onChanged: (_) {},
                              divisions: 2,
                              labels: const ['0%', '50%', '100%'],
                            ),
                          ),
                        ],
                      ),
                      MxcTextField(
                        key: null,
                        label: 'Label',
                        controller: controller,
                        hint: 'Hint',
                        button: MxcTextFieldButton(
                          icon: Icons.ac_unit,
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
