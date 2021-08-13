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
          color: darkMode
              ? ColorsTheme.of(context).secondaryBackground
              : Color(0xFFE5E5E5),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            MxcAppBar.back(text: 'Title'),
                            MxcAppBar.close(text: 'Title'),
                            MxcAppBar.back(
                              text: 'Long Title ' * 100,
                              action: AppBarButton.text(
                                'Skip',
                                onTap: () {},
                              ),
                            ),
                            MxcAppBar(
                              text: 'Long Title ' * 100,
                              leading: AppBarButton.icon(
                                FontAwesomeIcons.calculator,
                                onTap: () {},
                              ),
                              action: AppBarButton.icon(
                                Icons.settings,
                                onTap: () {},
                              ),
                            ),
                            MxcAppBar.custom(
                              title: Center(
                                child: Image(
                                  image: ImagesTheme.of(context).logoMxc,
                                  height: 40,
                                ),
                              ),
                              leading: AppBarButton.icon(
                                FontAwesomeIcons.calculator,
                                onTap: () {},
                              ),
                              action: AppBarButton.icon(
                                Icons.settings,
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      MxcScopedTheme(
                        data: MxcScopedThemeData(
                          primaryColor: ColorsTheme.of(context).mxcBlue,
                        ),
                        child: ButtonsRow(),
                      ),
                      SizedBox(height: 48),
                      MxcScopedTheme(
                        data: MxcScopedThemeData(
                          primaryColor: ColorsTheme.of(context).dhxBlue,
                        ),
                        child: ButtonsRow(),
                      ),
                      SizedBox(height: 48),
                      MxcScopedTheme(
                        data: MxcScopedThemeData(
                          primaryColor: ColorsTheme.of(context).dhxPurple,
                        ),
                        child: ButtonsRow(),
                      ),
                      SizedBox(height: 48),
                      MxcScopedTheme(
                        data: MxcScopedThemeData(
                          primaryColor: ColorsTheme.of(context).minerHealthRed,
                        ),
                        child: ButtonsRow(),
                      ),
                      SizedBox(height: 48),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
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

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 10,
            decoration: BoxDecoration(
              color: MxcScopedTheme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
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
                    SizedBox(width: 19),
                    SizedBox(
                      width: 343,
                      child: MxcPrimaryButton(
                        key: null,
                        title: 'Primary Button Disabled',
                        onTap: null,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
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
                    SizedBox(width: 19),
                    SizedBox(
                      width: 343,
                      child: MxcSecondaryButton(
                        key: null,
                        title: 'Secondary Button Disabled',
                        onTap: null,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Wrap(
                  runSpacing: 5,
                  children: [
                    SizedBox(
                      width: 343,
                      child: MxcOutlinedButton(
                        key: null,
                        title: 'Outlined Button',
                        onTap: () {},
                      ),
                    ),
                    SizedBox(width: 19),
                    SizedBox(
                      width: 343,
                      child: MxcOutlinedButton(
                        key: null,
                        title: 'Outlined Button Disabled',
                        onTap: null,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Wrap(
                  runSpacing: 5,
                  children: [
                    SizedBox(
                      width: 250,
                      child: SegmentationTab(
                        key: null,
                        labels: ['lorem', 'ipsum'],
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
                SizedBox(height: 16),
                Wrap(
                  runSpacing: 5,
                  children: [
                    MxcCircleButton.image(
                      key: null,
                      image: ImagesTheme.of(context).fuel,
                      filled: true,
                      onTap: () {},
                    ),
                    SizedBox(width: 19),
                    MxcCircleButton.image(
                      key: null,
                      image: ImagesTheme.of(context).iconMine,
                      onTap: () {},
                    ),
                    SizedBox(width: 19),
                    MxcCircleButton.icon(
                      key: null,
                      icon: Icons.arrow_forward,
                      onTap: null,
                    ),
                    SizedBox(width: 19),
                    MxcCircleButton.icon(
                      key: null,
                      icon: Icons.arrow_forward_ios,
                      onTap: () {},
                    ),
                    SizedBox(width: 19),
                    MxcCircleButton.image(
                      key: null,
                      image: ImagesTheme.of(context).gateways,
                      filled: true,
                      onTap: () {},
                    ),
                    SizedBox(width: 19),
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
                    MxcSwitch(
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
                    MxcCheckbox(
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
                    SizedBox(width: 15),
                    SizedBox(
                      width: 200,
                      child: MxcSlider.loading(
                        key: null,
                      ),
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      width: 200,
                      child: MxcSlider(
                        key: null,
                        value: 0.5,
                        onChanged: (_) {},
                        divisions: 2,
                        labels: ['0%', '50%', '100%'],
                      ),
                    ),
                  ],
                ),
                MxcTextField(
                  key: null,
                  label: 'Label',
                  controller: TextEditingController(),
                ),
                MxcTextField(
                  key: null,
                  label: 'Label',
                  controller: TextEditingController(),
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
    );
  }
}
