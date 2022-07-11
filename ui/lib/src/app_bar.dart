import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

void Function() _appBarPopHandlerBuilder(BuildContext context) {
  return () {
    final navigator = Navigator.maybeOf(context);
    if (navigator?.canPop() ?? false) {
      navigator!.pop();
      return;
    }
    final bottomFlowDialog = BottomFlowDialog.maybeOf(context);
    if (bottomFlowDialog != null) {
      bottomFlowDialog.close<void>();
    }
  };
}

void Function() _appBarCloseHandlerBuilder(BuildContext context) {
  return () {
    final bottomFlowDialog = BottomFlowDialog.maybeOf(context);
    if (bottomFlowDialog != null) {
      bottomFlowDialog.close<void>();
      return;
    }
    final navigator = Navigator.maybeOf(context);
    if (navigator?.canPop() ?? false) {
      navigator!.pop();
    }
  };
}

class MxcAppBar extends StatelessWidget {
  MxcAppBar({
    Key? key,
    required String text,
    this.padding,
    this.action,
    this.leading,
    this.centerTitle = true,
    String? subtitle,
  })  : title = MxcAppBarTextTitle(
          text,
          centerTitle: centerTitle,
          subtitle: subtitle,
        ),
        super(key: key);

  const MxcAppBar.custom({
    Key? key,
    required this.title,
    this.padding,
    this.action,
    this.leading,
    this.centerTitle = true,
  }) : super(key: key);

  MxcAppBar.back({
    Key? key,
    required String text,
    this.padding,
    this.action,
    this.centerTitle = true,
    String? subtitle,
  })  : title = MxcAppBarTextTitle(
          text,
          centerTitle: centerTitle,
          subtitle: subtitle,
        ),
        leading = Builder(
          builder: (context) => MxcAppBarButton.icon(
            Icons.arrow_back_ios,
            key: const ValueKey('nav_back'),
            onTap: _appBarPopHandlerBuilder(context),
          ),
        ),
        super(key: key);

  MxcAppBar.close({
    Key? key,
    required String text,
    this.padding,
    this.leading,
    this.centerTitle = true,
    String? subtitle,
  })  : title = MxcAppBarTextTitle(
          text,
          centerTitle: centerTitle,
          subtitle: subtitle,
        ),
        action = Builder(
          builder: (context) => MxcAppBarButton.icon(
            Icons.close,
            onTap: _appBarCloseHandlerBuilder(context),
          ),
        ),
        super(key: key);

  MxcAppBar.backAndClose({
    Key? key,
    required String text,
    this.centerTitle = true,
    required VoidCallback onClose,
    String? subtitle,
  })  : title = MxcAppBarTextTitle(
          text,
          centerTitle: centerTitle,
          subtitle: subtitle,
        ),
        leading = Builder(
          builder: (context) => MxcAppBarButton.icon(
            Icons.arrow_back_ios,
            onTap: _appBarPopHandlerBuilder(context),
          ),
        ),
        action = MxcAppBarButton.icon(
          Icons.close,
          onTap: onClose,
        ),
        padding = null,
        super(key: key);

  final Widget title;
  final EdgeInsetsGeometry? padding;
  final Widget? action;
  final Widget? leading;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.only(
            top: 22,
            bottom: 14,
            left: 16,
            right: 16,
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (leading != null)
            SizedBox(
              width: 32,
              child: leading,
            ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: action != null ? 60 : 0,
                right: leading != null ? 32 : 0,
              ),
              child: title,
            ),
          ),
          if (action != null)
            SizedBox(
              width: 60,
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
        alignment: Alignment.centerRight,
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
    this.subtitle,
  }) : super(key: key);

  final bool centerTitle;
  final String text;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final titleWidget = Text(
      text,
      textAlign: centerTitle ? TextAlign.center : TextAlign.left,
      style: FontTheme.of(context).body2(),
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
    if (subtitle != null) {
      return Column(
        children: [
          titleWidget,
          const SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.only(
              left: centerTitle ? 15 : 0,
              right: 15,
            ),
            child: Text(
              subtitle!,
              textAlign: centerTitle ? TextAlign.center : TextAlign.left,
              style: FontTheme.of(context).caption1.secondary(),
            ),
          ),
        ],
      );
    }
    return titleWidget;
  }
}
