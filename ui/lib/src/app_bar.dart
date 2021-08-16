import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcAppBar extends StatelessWidget {
  final Widget title;
  final EdgeInsetsGeometry padding;
  final Widget? action;
  final Widget? leading;
  final bool centerTitle;

  MxcAppBar({
    Key? key,
    required String text,
    this.padding = const EdgeInsets.only(
      top: 22,
      bottom: 33,
      left: 20,
      right: 20,
    ),
    this.action,
    this.leading,
    this.centerTitle = true,
  })  : title = _textTitle(text, centerTitle),
        super(key: key);

  MxcAppBar.custom({
    Key? key,
    required this.title,
    this.padding = const EdgeInsets.only(
      top: 22,
      bottom: 33,
      left: 20,
      right: 20,
    ),
    this.action,
    this.leading,
    this.centerTitle = true,
  }) : super(key: key);

  MxcAppBar.back({
    Key? key,
    required String text,
    this.padding = const EdgeInsets.only(
      top: 22,
      bottom: 33,
      left: 20,
      right: 20,
    ),
    this.action,
    this.centerTitle = true,
  })  : title = _textTitle(text, centerTitle),
        leading = Builder(
          builder: (context) => MxcAppBarButton.icon(
            Icons.arrow_back_ios,
            onTap: () => Navigator.of(context).pop(),
          ),
        );

  MxcAppBar.close({
    Key? key,
    required String text,
    this.padding = const EdgeInsets.only(
      top: 22,
      bottom: 33,
      left: 20,
      right: 20,
    ),
    this.leading,
    this.centerTitle = true,
  })  : title = _textTitle(text, centerTitle),
        action = Builder(
          builder: (context) => MxcAppBarButton.icon(
            Icons.close,
            onTap: () => Navigator.of(context).pop(),
          ),
        );

  static Widget _textTitle(String text, bool centerTitle) => Builder(
        builder: (context) => Text(
          text,
          textAlign: centerTitle ? TextAlign.center : TextAlign.left,
          style: FontTheme.of(context).big(),
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 48,
            child: leading,
          ),
          Expanded(
            child: title,
          ),
          SizedBox(
            width: 48,
            child: action,
          ),
        ],
      ),
    );
  }
}

class MxcAppBarButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;

  const MxcAppBarButton({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  MxcAppBarButton.text(
    String text, {
    Key? key,
    required this.onTap,
  })  : child = Builder(
          builder: (context) => Text(
            'Skip',
            style: FontTheme.of(context).big.primary(),
          ),
        ),
        super(key: key);

  MxcAppBarButton.icon(
    IconData icon, {
    Key? key,
    required this.onTap,
  })  : child = Builder(
          builder: (context) => icon.fontPackage == 'font_awesome_flutter'
              ? FaIcon(
                  icon,
                  color: ColorsTheme.of(context).textPrimaryAndIcons,
                )
              : Icon(
                  icon,
                  color: ColorsTheme.of(context).textPrimaryAndIcons,
                ),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Align(
        child: child,
        alignment: Alignment.center,
      ),
    );
  }
}
