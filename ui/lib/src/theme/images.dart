import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme.dart';

const _packageName = 'mxc_ui';

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

  final ImageProvider logoMxc = AssetImage(
    'assets/images/wallet/logo-mxc.png',
    package: _packageName,
  );
  final ImageProvider logoDhx = AssetImage(
    'assets/images/wallet/logo-dhx.png',
    package: _packageName,
  );
  final ImageProvider logoBtc = AssetImage(
    'assets/images/wallet/logo-btc.png',
    package: _packageName,
  );
  final ImageProvider logoNft = AssetImage(
    'assets/images/wallet/logo-nft.png',
    package: _packageName,
  );

  //splash
  final ImageProvider splashLogo = AssetImage(
    'assets/images/splash/logo.png',
    package: _packageName,
  );

  //home
  final ImageProvider blueCircle = AssetImage(
    'assets/images/home/bluecircle.png',
    package: _packageName,
  );
  final ImageProvider gateways = AssetImage(
    'assets/images/home/gateways.png',
    package: _packageName,
  );
  final ImageProvider devices = AssetImage(
    'assets/images/home/devices.png',
    package: _packageName,
  );

  final Map<String, ImageProvider> bottomBarMenus = {
    'home': AssetImage(
      'assets/images/home/home.png',
      package: _packageName,
    ),
    'gateway': AssetImage(
      'assets/images/home/gateways.png',
      package: _packageName,
    ),
    'device': AssetImage(
      'assets/images/home/devices.png',
      package: _packageName,
    ),
    'wallet': AssetImage(
      'assets/images/home/wallet.png',
      package: _packageName,
    ),
  };

  //app
  final ImageProvider close = AssetImage(
    'assets/images/app/close.png',
    package: _packageName,
  );

  final ImageProvider done = AssetImage(
    'assets/images/app/done.png',
    package: _packageName,
  );

  final ImageProvider noData = AssetImage(
    'assets/images/app/no-data.png',
    package: _packageName,
  );

  final ImageProvider circleLogo = AssetImage(
    'assets/images/app/logo-circle.png',
    package: _packageName,
  );

  final ImageProvider questionCircle = AssetImage(
    'assets/images/app/ic-question-circle.png',
    package: _packageName,
  );

  //deposit
  final ImageProvider qrcode = AssetImage(
    'assets/images/deposit/qrcode.png',
    package: _packageName,
  );

  //gateway
  final ImageProvider infoDownlinkPrice = AssetImage(
    'assets/images/gateway/info-downloadlink_price.png',
    package: _packageName,
  );

  final ImageProvider uptime = AssetImage(
    'assets/images/gateway/uptime.png',
    package: _packageName,
  );

  final ImageProvider gps = AssetImage(
    'assets/images/gateway/gps.png',
    package: _packageName,
  );

  final ImageProvider gps_disabled = AssetImage(
    'assets/images/gateway/gps_disabled.png',
    package: _packageName,
  );

  final ImageProvider altitude = AssetImage(
    'assets/images/gateway/altitude.png',
    package: _packageName,
  );

  final ImageProvider altitude_disabled = AssetImage(
    'assets/images/gateway/altitude_disabled.png',
    package: _packageName,
  );

  final ImageProvider orientation = AssetImage(
    'assets/images/gateway/orientation.png',
    package: _packageName,
  );

  final ImageProvider orientation_disabled = AssetImage(
    'assets/images/gateway/orientation_disabled.png',
    package: _packageName,
  );

  final ImageProvider proximity = AssetImage(
    'assets/images/gateway/proximity.png',
    package: _packageName,
  );

  final ImageProvider proximity_disabled = AssetImage(
    'assets/images/gateway/proximity_disabled.png',
    package: _packageName,
  );

  final ImageProvider fuel = AssetImage(
    'assets/images/gateway/fuel.png',
    package: _packageName,
  );

  final ImageProvider fuelCircle = AssetImage(
    'assets/images/gateway/fuel_circle.png',
    package: _packageName,
  );

  final ImageProvider sendCircle = AssetImage(
    'assets/images/gateway/send_circle.png',
    package: _packageName,
  );

  final ImageProvider addMinerSuccess = AssetImage(
    'assets/images/gateway/add_miner_success.png',
    package: _packageName,
  );

  final ImageProvider addMinerFailure = AssetImage(
    'assets/images/gateway/add_miner_failure.png',
    package: _packageName,
  );

  final ImageProvider addMinerWarning = AssetImage(
    'assets/images/gateway/add_miner_warning.png',
    package: _packageName,
  );

  // login
  final ImageProvider supernode_placeholder = AssetImage(
    "assets/images/login/supernode_placeholder.png",
    package: _packageName,
  );

  final ImageProvider placeholder = AssetImage(
    "assets/images/login/placeholder.png",
    package: _packageName,
  );

  final ImageProvider email = AssetImage(
    'assets/images/login/email.png',
    package: _packageName,
  );

  final ImageProvider wechat = AssetImage(
    'assets/images/login/wechat.png',
    package: _packageName,
  );

  final ImageProvider datadash = AssetImage(
    'assets/images/login/datadash.png',
    package: _packageName,
  );

  final ImageProvider dhx = AssetImage(
    'assets/images/login/dhx.png',
    package: _packageName,
  );

  final ImageProvider mxc = AssetImage(
    'assets/images/login/mxc.png',
    package: _packageName,
  );

  final ImageProvider mxcSite1 = AssetImage(
    'assets/images/login/mxc_1.png',
    package: _packageName,
  );

  final ImageProvider mxcSite2 = AssetImage(
    'assets/images/login/mxc_2.png',
    package: _packageName,
  );

  final ImageProvider mxcSite3 = AssetImage(
    'assets/images/login/mxc_3.png',
    package: _packageName,
  );

  final ImageProvider dhxSite = AssetImage(
    'assets/images/login/dhx_site.png',
    package: _packageName,
  );

  final ImageProvider medium = AssetImage(
    'assets/images/login/medium.png',
    package: _packageName,
  );

  // wallet

  final ImageProvider iconMine = AssetImage(
    'assets/images/wallet/icon-mine.png',
    package: _packageName,
  );

  final ImageProvider iconBond = AssetImage(
    'assets/images/wallet/bond.png',
    package: _packageName,
  );

  final ImageProvider iconLearn = AssetImage(
    'assets/images/wallet/learn.png',
    package: _packageName,
  );

  final ImageProvider iconUnbond = AssetImage(
    'assets/images/wallet/unbond.png',
    package: _packageName,
  );

  final ImageProvider iconCouncil = AssetImage(
    'assets/images/wallet/icon-council.png',
    package: _packageName,
  );

  final ImageProvider council = AssetImage(
    'assets/images/wallet/council.png',
    package: _packageName,
  );

  final ImageProvider infoMXCVault = AssetImage(
    'assets/images/wallet/info-mxc-vault.png',
    package: _packageName,
  );

  final ImageProvider infoCurrentTransactionFee = AssetImage(
    'assets/images/wallet/info-current-transaction-fee.png',
    package: _packageName,
  );

  final ImageProvider mcxBubble = AssetImage(
    'assets/images/wallet/mxc_bubble.png',
    package: _packageName,
  );

  final ImageProvider minerBubble = AssetImage(
    'assets/images/wallet/miner_bubble.png',
    package: _packageName,
  );

  final ImageProvider dhxMiningDiagram = AssetImage(
    'assets/images/wallet/dhx_mining_diagram.png',
    package: _packageName,
  );

  final ImageProvider rocket = AssetImage(
    'assets/images/wallet/rocket.png',
    package: _packageName,
  );

  final ImageProvider minerBoostGraph = AssetImage(
    'assets/images/wallet/mining_boost_graph.png',
    package: _packageName,
  );

  final ImageProvider calendar1 = AssetImage(
    'assets/images/wallet/calendar1.png',
    package: _packageName,
  );

  final ImageProvider calendar2 = AssetImage(
    'assets/images/wallet/calendar2.png',
    package: _packageName,
  );

  final ImageProvider calendar3 = AssetImage(
    'assets/images/wallet/calendar3.png',
    package: _packageName,
  );

  //settings
  final ImageProvider warningRobot = AssetImage(
    'assets/images/settings/robot_warning.png',
    package: _packageName,
  );

  final ImageProvider weChat = AssetImage(
    'assets/images/settings/wechat.png',
    package: _packageName,
  );

  final ImageProvider weChatQRCode = AssetImage(
    'assets/images/settings/wechat_qr_code.png',
    package: _packageName,
  );
}

class ImagesThemeDark extends ImagesTheme {
  ImagesThemeDark._() : super._();

  @override
  final ImageProvider logoMxc = AssetImage(
    'assets/images/wallet/logo-mxc-dark.png',
    package: _packageName,
  );

  @override
  final ImageProvider logoDhx = AssetImage(
    'assets/images/wallet/logo-dhx-dark.png',
    package: _packageName,
  );

  @override
  final ImageProvider logoBtc = AssetImage(
    'assets/images/wallet/logo-btc-dark.png',
    package: _packageName,
  );

  //splash
  @override
  final ImageProvider splashLogo = AssetImage(
    'assets/images/splash/logo-dark.png',
    package: _packageName,
  );

  // login

  @override
  final ImageProvider datadash = AssetImage(
    'assets/images/login/datadash-dark.png',
    package: _packageName,
  );

  @override
  final ImageProvider dhx = AssetImage(
    'assets/images/login/dhx-dark.png',
    package: _packageName,
  );

  @override
  final ImageProvider mxc = AssetImage(
    'assets/images/login/mxc-dark.png',
    package: _packageName,
  );

  // wallet

  @override
  final ImageProvider minerBoostGraph = AssetImage(
    'assets/images/wallet/mining_boost_graph-dark.png',
    package: _packageName,
  );

  @override
  final ImageProvider dhxMiningDiagram = AssetImage(
    'assets/images/wallet/dhx_mining_diagram-dark.png',
    package: _packageName,
  );

  @override
  final ImageProvider calendar1 = AssetImage(
    'assets/images/wallet/calendar1-dark.png',
    package: _packageName,
  );

  @override
  final ImageProvider calendar2 = AssetImage(
    'assets/images/wallet/calendar2-dark.png',
    package: _packageName,
  );

  @override
  final ImageProvider calendar3 = AssetImage(
    'assets/images/wallet/calendar3-dark.png',
    package: _packageName,
  );
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
