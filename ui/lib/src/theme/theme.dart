import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';
import 'package:provider/provider.dart';

import 'images.dart';
import 'colors.dart';
import 'font.dart';

export 'images.dart';
export 'colors.dart';
export 'font.dart';
export 'scoped.dart';

enum MxcThemeOption { day, night }

class MxcThemeData {
  MxcThemeData._({
    required this.colors,
    required this.fonts,
    required this.images,
  });

  factory MxcThemeData.fromOption(MxcThemeOption option) {
    final colors = ColorsTheme.fromOption(option);
    final font = FontTheme(colors);
    final images = ImagesTheme.fromOption(option);
    return MxcThemeData._(
      colors: colors,
      fonts: font,
      images: images,
    );
  }

  final ColorsTheme colors;
  final FontTheme fonts;
  final ImagesTheme images;
}

class MxcTheme extends StatelessWidget {
  final MxcThemeData data;
  final Widget child;

  const MxcTheme({
    Key? key,
    required this.data,
    required this.child,
  }) : super(key: key);

  /// Use this constructor to define app-level MXC level, it will provide [ColorsTheme], [FontTheme] and [ImagesTheme] into the tree
  factory MxcTheme.fromOption({
    required MxcThemeOption option,
    required Widget child,
  }) {
    final data = MxcThemeData.fromOption(option);
    return MxcTheme(
      data: data,
      child: child,
    );
  }

  static MxcThemeData of(BuildContext context, {bool listen = true}) {
    final theme = Provider.of<MxcThemeData>(context, listen: listen);
    return theme;
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: data.colors),
        Provider.value(value: data.fonts),
        Provider.value(value: data.images),
        Provider<MxcThemeData>.value(value: data),
      ],
      child: Theme(
        data: data.toThemeData(),
        child: child,
      ),
    );
  }
}

extension MxcThemeDataExtension on MxcThemeData {
  ThemeData toThemeData() => ThemeData(
        brightness:
            colors is ColorsThemeDark ? Brightness.dark : Brightness.light,
        bottomAppBarColor: colors.secondaryBackground,
        scaffoldBackgroundColor: colors.primaryBackground,
        textTheme: TextTheme(
          bodyText1: fonts.middle(),
          bodyText2: fonts.middle(),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: fonts.small.secondary(),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colors.secondaryBackground,
          selectedItemColor: colors.mxcBlue,
          unselectedItemColor: colors.textSecondary,
        ),
        iconTheme: IconThemeData(
          color: colors.textPrimaryAndIcons,
        ),
      );
}
