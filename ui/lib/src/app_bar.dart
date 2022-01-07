import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcAppBar extends StatelessWidget {
  MxcAppBar({
    Key? key,
    required String text,
    this.padding = const EdgeInsets.only(
      top: 22,
      bottom: 14,
      left: 20,
      right: 20,
    ),
    this.action,
    this.leading,
    this.centerTitle = true,
  })  : title = MxcAppBarTextTitle(text, centerTitle: centerTitle),
        super(key: key);

  const MxcAppBar.custom({
    Key? key,
    required this.title,
    this.padding = const EdgeInsets.only(
      top: 22,
      bottom: 14,
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
      bottom: 14,
      left: 20,
      right: 20,
    ),
    this.action,
    this.centerTitle = true,
  })  : title = MxcAppBarTextTitle(text, centerTitle: centerTitle),
        leading = Builder(
          builder: (context) => MxcAppBarButton.icon(
            Icons.arrow_back_ios,
            key: const ValueKey('nav_back'),
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
        super(key: key);

  MxcAppBar.close({
    Key? key,
    required String text,
    this.padding = const EdgeInsets.only(
      top: 22,
      bottom: 14,
      left: 20,
      right: 20,
    ),
    this.leading,
    this.centerTitle = true,
  })  : title = MxcAppBarTextTitle(text, centerTitle: centerTitle),
        action = Builder(
          builder: (context) => MxcAppBarButton.icon(
            Icons.close,
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
        super(key: key);

  MxcAppBar.backAndClose({
    Key? key,
    required String text,
    this.centerTitle = true,
    required VoidCallback onClose,
  })  : title = MxcAppBarTextTitle(text, centerTitle: centerTitle),
        leading = Builder(
          builder: (context) => MxcAppBarButton.icon(
            Icons.arrow_back_ios,
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
        action = MxcAppBarButton.icon(
          Icons.close,
          onTap: onClose,
        ),
        padding = const EdgeInsets.only(
          top: 22,
          bottom: 14,
          left: 20,
          right: 20,
        ),
        super(key: key);

  final Widget title;
  final EdgeInsetsGeometry padding;
  final Widget? action;
  final Widget? leading;
  final bool centerTitle;

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
            text,
            style: FontTheme.of(context).body1.primary(),
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

  MxcAppBarButton.image(
    ImageProvider<Object> image, {
    Key? key,
    double? width,
    double? height,
    Color? color,
    required this.onTap,
  })  : child = Builder(
          builder: (context) => Image(
            height: height,
            width: width,
            image: image,
            color: color ?? ColorsTheme.of(context).textPrimaryAndIcons,
          ),
        ),
        super(key: key);

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        child: child,
      ),
    );
  }
}

class MxcAppBarTextTitle extends StatelessWidget {
  const MxcAppBarTextTitle(
    this.text, {
    Key? key,
    this.centerTitle = true,
  }) : super(key: key);

  final bool centerTitle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: centerTitle ? TextAlign.center : TextAlign.left,
      style: FontTheme.of(context).body1(),
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}
