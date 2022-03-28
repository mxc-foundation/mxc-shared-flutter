import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Expanded(
            child: MxcTheme(
              data: MxcThemeData.fromOption(MxcThemeOption.day),
              child: ColorsPagePallet(
                titleColor: MxcThemeData.fromOption(MxcThemeOption.day)
                    .colors
                    .primaryBackground,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: MxcTheme(
              data: MxcThemeData.fromOption(MxcThemeOption.night),
              child: ColorsPagePallet(
                titleColor: MxcThemeData.fromOption(MxcThemeOption.night)
                    .colors
                    .boxComponents,
                backgroundColor: const Color(0xFF292929),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorsPagePallet extends StatelessWidget {
  const ColorsPagePallet({
    Key? key,
    required this.backgroundColor,
    required this.titleColor,
  }) : super(key: key);

  final Color titleColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColorsPageTitle(
            'Background',
            backgroundColor: titleColor,
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'primaryBackground',
            color: ColorsTheme.of(context).primaryBackground,
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'secondaryBackground',
            color: ColorsTheme.of(context).secondaryBackground,
          ),
          const SizedBox(height: 32),
          ColorsPageTitle(
            'Components',
            backgroundColor: titleColor,
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'boxComponents',
            color: ColorsTheme.of(context).boxComponents,
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'mxcBlue',
            color: ColorsTheme.of(context).mxcBlue,
            shades: [
              ColorsTheme.of(context).mxcBlue80,
              ColorsTheme.of(context).mxcBlue60,
              ColorsTheme.of(context).mxcBlue40,
              ColorsTheme.of(context).mxcBlue20,
              ColorsTheme.of(context).mxcBlue05,
            ],
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'dhxBlue',
            color: ColorsTheme.of(context).dhxBlue,
            shades: [
              ColorsTheme.of(context).dhxBlue80,
              ColorsTheme.of(context).dhxBlue60,
              ColorsTheme.of(context).dhxBlue40,
              ColorsTheme.of(context).dhxBlue20,
            ],
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'dhxPurple',
            color: ColorsTheme.of(context).dhxPurple,
            shades: [
              ColorsTheme.of(context).dhxPurple80,
              ColorsTheme.of(context).dhxPurple60,
              ColorsTheme.of(context).dhxPurple40,
              ColorsTheme.of(context).dhxPurple20,
            ],
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'minerHealthRed',
            color: ColorsTheme.of(context).minerHealthRed,
            shades: [
              ColorsTheme.of(context).minerHealthRed80,
              ColorsTheme.of(context).minerHealthRed20,
            ],
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'btcYellow',
            color: ColorsTheme.of(context).btcYellow,
            shades: [
              ColorsTheme.of(context).btcYellow80,
              ColorsTheme.of(context).btcYellow60,
              ColorsTheme.of(context).btcYellow40,
              ColorsTheme.of(context).btcYellow20,
            ],
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'success',
            color: ColorsTheme.of(context).success,
            shades: [
              ColorsTheme.of(context).success20,
            ],
          ),
          const SizedBox(height: 32),
          ColorsPageTitle(
            'Text',
            backgroundColor: titleColor,
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'textPrimaryAndIcons',
            color: ColorsTheme.of(context).textPrimaryAndIcons,
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'textLabel',
            color: ColorsTheme.of(context).textLabel,
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'buttonIconTextColor',
            color: ColorsTheme.of(context).buttonIconTextColor,
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'buttonDisabledBackground',
            color: ColorsTheme.of(context).buttonDisabledBackground,
          ),
          const SizedBox(height: 32),
          ColorsPageSample(
            name: 'buttonDisabledLabel',
            color: ColorsTheme.of(context).buttonDisabledLabel,
          ),
        ],
      ),
    );
  }
}

class ColorsPageTitle extends StatelessWidget {
  const ColorsPageTitle(
    this.text, {
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  final Color backgroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 27,
        bottom: 18,
        top: 18,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}

class ColorsPageSample extends StatelessWidget {
  const ColorsPageSample({
    Key? key,
    required this.color,
    required this.name,
    this.shades = const [],
  }) : super(key: key);

  final String name;
  final Color color;
  final List<Color> shades;

  Widget colorSquare(Color color) => Container(
        height: 96,
        width: 96,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(),
          borderRadius: BorderRadius.circular(14),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '#${color.value.toRadixString(16)} $name',
          style: FontTheme.of(context).caption1.label(),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 96,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              colorSquare(color),
              const SizedBox(width: 13),
              for (final shade in shades) ...[
                colorSquare(shade),
                const SizedBox(width: 13),
              ]
            ],
          ),
        )
      ],
    );
  }
}
