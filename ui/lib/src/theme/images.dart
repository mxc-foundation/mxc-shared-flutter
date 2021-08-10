import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme.dart';

final lightThemeImages = ImagesTheme._();
final darkThemeImages = ImagesThemeDark._(); // todo

class ImagesTheme {
  ImagesTheme._();

  factory ImagesTheme.fromOption(MxcThemeOption option) {
    switch (option) {
      case MxcThemeOption.day:
        return ImagesTheme._();
      case MxcThemeOption.night:
        return ImagesThemeDark._();
    }
  }

  static ImagesTheme of(BuildContext context, {bool listen = true}) {
    return Provider.of<ImagesTheme>(context, listen: listen);
  }

  final ImageProvider logoMxc = AssetImage('assets/images/wallet/logo-mxc.png');
  final ImageProvider logoDhx = AssetImage('assets/images/wallet/logo-dhx.png');
  final ImageProvider logoBtc = AssetImage('assets/images/wallet/logo-btc.png');
  final ImageProvider logoNft = AssetImage('assets/images/wallet/logo-nft.png');

  //splash
  final ImageProvider splashLogo = AssetImage('assets/images/splash/logo.png');

  //home
  final ImageProvider blueCircle =
      AssetImage('assets/images/home/bluecircle.png');
  final ImageProvider gateways = AssetImage('assets/images/home/gateways.png');
  final ImageProvider devices = AssetImage('assets/images/home/devices.png');

  final Map<String, ImageProvider> bottomBarMenus = {
    'home': AssetImage('assets/images/home/home.png'),
    'gateway': AssetImage('assets/images/home/gateways.png'),
    'device': AssetImage('assets/images/home/devices.png'),
    'wallet': AssetImage('assets/images/home/wallet.png'),
  };

  //app
  final ImageProvider close = AssetImage('assets/images/app/close.png');

  final ImageProvider done = AssetImage('assets/images/app/done.png');

  final ImageProvider noData = AssetImage('assets/images/app/no-data.png');

  final ImageProvider circleLogo =
      AssetImage('assets/images/app/logo-circle.png');

  final ImageProvider questionCircle =
      AssetImage('assets/images/app/ic-question-circle.png');

  //deposit
  final ImageProvider qrcode = AssetImage('assets/images/deposit/qrcode.png');

  //gateway
  final ImageProvider infoDownlinkPrice =
      AssetImage('assets/images/gateway/info-downloadlink_price.png');

  final ImageProvider uptime = AssetImage('assets/images/gateway/uptime.png');

  final ImageProvider gps = AssetImage('assets/images/gateway/gps.png');

  final ImageProvider gps_disabled =
      AssetImage('assets/images/gateway/gps_disabled.png');

  final ImageProvider altitude =
      AssetImage('assets/images/gateway/altitude.png');

  final ImageProvider altitude_disabled =
      AssetImage('assets/images/gateway/altitude_disabled.png');

  final ImageProvider orientation =
      AssetImage('assets/images/gateway/orientation.png');

  final ImageProvider orientation_disabled =
      AssetImage('assets/images/gateway/orientation_disabled.png');

  final ImageProvider proximity =
      AssetImage('assets/images/gateway/proximity.png');

  final ImageProvider proximity_disabled =
      AssetImage('assets/images/gateway/proximity_disabled.png');

  final ImageProvider fuel = AssetImage('assets/images/gateway/fuel.png');

  final ImageProvider fuelCircle =
      AssetImage('assets/images/gateway/fuel_circle.png');

  final ImageProvider sendCircle =
      AssetImage('assets/images/gateway/send_circle.png');

  final ImageProvider addMinerSuccess =
      AssetImage('assets/images/gateway/add_miner_success.png');

  final ImageProvider addMinerFailure =
      AssetImage('assets/images/gateway/add_miner_failure.png');

  final ImageProvider addMinerWarning =
      AssetImage('assets/images/gateway/add_miner_warning.png');

  // login
  final ImageProvider supernode_placeholder =
      AssetImage("assets/images/login/supernode_placeholder.png");

  final ImageProvider placeholder =
      AssetImage("assets/images/login/placeholder.png");

  final ImageProvider email = AssetImage('assets/images/login/email.png');

  final ImageProvider wechat = AssetImage('assets/images/login/wechat.png');

  final ImageProvider datadash = AssetImage('assets/images/login/datadash.png');

  final ImageProvider dhx = AssetImage('assets/images/login/dhx.png');

  final ImageProvider mxc = AssetImage('assets/images/login/mxc.png');

  final ImageProvider mxcSite1 = AssetImage('assets/images/login/mxc_1.png');

  final ImageProvider mxcSite2 = AssetImage('assets/images/login/mxc_2.png');

  final ImageProvider mxcSite3 = AssetImage('assets/images/login/mxc_3.png');

  final ImageProvider dhxSite = AssetImage('assets/images/login/dhx_site.png');

  final ImageProvider medium = AssetImage('assets/images/login/medium.png');

  // wallet

  final ImageProvider iconMine =
      AssetImage('assets/images/wallet/icon-mine.png');

  final ImageProvider iconBond = AssetImage('assets/images/wallet/bond.png');

  final ImageProvider iconLearn = AssetImage('assets/images/wallet/learn.png');

  final ImageProvider iconUnbond =
      AssetImage('assets/images/wallet/unbond.png');

  final ImageProvider iconCouncil =
      AssetImage('assets/images/wallet/icon-council.png');

  final ImageProvider council = AssetImage('assets/images/wallet/council.png');

  final ImageProvider infoMXCVault =
      AssetImage('assets/images/wallet/info-mxc-vault.png');

  final ImageProvider infoCurrentTransactionFee =
      AssetImage('assets/images/wallet/info-current-transaction-fee.png');

  final ImageProvider mcxBubble =
      AssetImage('assets/images/wallet/mxc_bubble.png');

  final ImageProvider minerBubble =
      AssetImage('assets/images/wallet/miner_bubble.png');

  final ImageProvider dhxMiningDiagram =
      AssetImage('assets/images/wallet/dhx_mining_diagram.png');

  final ImageProvider rocket = AssetImage('assets/images/wallet/rocket.png');

  final ImageProvider minerBoostGraph =
      AssetImage('assets/images/wallet/mining_boost_graph.png');

  final ImageProvider calendar1 =
      AssetImage('assets/images/wallet/calendar1.png');

  final ImageProvider calendar2 =
      AssetImage('assets/images/wallet/calendar2.png');

  final ImageProvider calendar3 =
      AssetImage('assets/images/wallet/calendar3.png');

  //settings
  final ImageProvider warningRobot =
      AssetImage('assets/images/settings/robot_warning.png');

  final ImageProvider weChat = AssetImage('assets/images/settings/wechat.png');

  final ImageProvider weChatQRCode =
      AssetImage('assets/images/settings/wechat_qr_code.png');
}

class ImagesThemeDark extends ImagesTheme {
  ImagesThemeDark._() : super._();

  @override
  final ImageProvider logoMxc =
      AssetImage('assets/images/wallet/logo-mxc-dark.png');

  @override
  final ImageProvider logoDhx =
      AssetImage('assets/images/wallet/logo-dhx-dark.png');

  @override
  final ImageProvider logoBtc =
      AssetImage('assets/images/wallet/logo-btc-dark.png');

  //splash
  @override
  final ImageProvider splashLogo =
      AssetImage('assets/images/splash/logo-dark.png');

  // login

  @override
  final ImageProvider datadash =
      AssetImage('assets/images/login/datadash-dark.png');

  @override
  final ImageProvider dhx = AssetImage('assets/images/login/dhx-dark.png');

  @override
  final ImageProvider mxc = AssetImage('assets/images/login/mxc-dark.png');

  // wallet

  @override
  final ImageProvider minerBoostGraph =
      AssetImage('assets/images/wallet/mining_boost_graph-dark.png');

  @override
  final ImageProvider dhxMiningDiagram =
      AssetImage('assets/images/wallet/dhx_mining_diagram-dark.png');

  @override
  final ImageProvider calendar1 =
      AssetImage('assets/images/wallet/calendar1-dark.png');

  @override
  final ImageProvider calendar2 =
      AssetImage('assets/images/wallet/calendar2-dark.png');

  @override
  final ImageProvider calendar3 =
      AssetImage('assets/images/wallet/calendar3-dark.png');
}

extension ImageProviderExt on ImageProvider {
  ImageProvider withScale(double scale) {
    final source = this;
    if (source is AssetImage) {
      return ExactAssetImage(
        source.assetName,
        bundle: source.bundle,
        package: source.package,
        scale: scale,
      );
    }
    return source;
  }
}
