import 'package:example/colors.dart';
import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MxcScopedTheme(
                data: MxcScopedThemeData(
                    primaryColor: ColorsTheme.of(context).mxcBlue),
                child: ButtonsRow(),
              ),
              SizedBox(height: 48),
              MxcScopedTheme(
                data: MxcScopedThemeData(
                    primaryColor: ColorsTheme.of(context).dhxBlue),
                child: ButtonsRow(),
              ),
              SizedBox(height: 48),
              MxcScopedTheme(
                data: MxcScopedThemeData(
                    primaryColor: ColorsTheme.of(context).dhxPurple),
                child: ButtonsRow(),
              ),
              SizedBox(height: 48),
              MxcScopedTheme(
                data: MxcScopedThemeData(
                    primaryColor: ColorsTheme.of(context).minerHealthRed),
                child: ButtonsRow(),
              ),
              SizedBox(height: 48),
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
              color: MxcScopedTheme.of(context)?.primaryColor ??
                  ColorsTheme.of(context).mxcBlue,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(width: 16),
          Column(
            children: [
              Row(
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
              Row(
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
              Row(
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
            ],
          ),
        ],
      ),
    );
  }
}
