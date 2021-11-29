import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme.dart';

const _packageName = 'mxc_ui';

class ImagesTheme {
  const ImagesTheme._();

  factory ImagesTheme.fromOption(MxcThemeOption option) {
    switch (option) {
      case MxcThemeOption.day:
        return const ImagesTheme._();
      case MxcThemeOption.night:
        return const ImagesThemeDark._();
    }
  }

  static ImagesTheme of(BuildContext context, {bool listen = true}) {
    return Provider.of<ImagesTheme>(context, listen: listen);
  }

  ImageProvider get logoMxc => const AssetImage(
        'assets/images/wallet/logo-mxc.png',
        package: _packageName,
      );
  ImageProvider get logoMxcBig => const AssetImage(
        'assets/images/wallet/logo-mxc-big.png',
        package: _packageName,
      );
  ImageProvider get logoDhx => const AssetImage(
        'assets/images/wallet/logo-dhx.png',
        package: _packageName,
      );
  ImageProvider get logoBtc => const AssetImage(
        'assets/images/wallet/logo-btc.png',
        package: _packageName,
      );
  ImageProvider get logoBtcBig => const AssetImage(
        'assets/images/wallet/logo-btc-big.png',
        package: _packageName,
      );
  ImageProvider get logoNft => const AssetImage(
        'assets/images/wallet/logo-nft.png',
        package: _packageName,
      );

  //splash
  ImageProvider get splashLogo => const AssetImage(
        'assets/images/splash/logo.png',
        package: _packageName,
      );

  //home
  ImageProvider get blueCircle => const AssetImage(
        'assets/images/home/bluecircle.png',
        package: _packageName,
      );
  ImageProvider get gateways => const AssetImage(
        'assets/images/home/gateways.png',
        package: _packageName,
      );
  ImageProvider get devices => const AssetImage(
        'assets/images/home/devices.png',
        package: _packageName,
      );

  Map<String, ImageProvider> get bottomBarMenus => const {
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
  ImageProvider get close => const AssetImage(
        'assets/images/app/close.png',
        package: _packageName,
      );

  ImageProvider get done => const AssetImage(
        'assets/images/app/done.png',
        package: _packageName,
      );

  ImageProvider get noData => const AssetImage(
        'assets/images/app/no-data.png',
        package: _packageName,
      );

  ImageProvider get circleLogo => const AssetImage(
        'assets/images/app/logo-circle.png',
        package: _packageName,
      );

  ImageProvider get questionCircle => const AssetImage(
        'assets/images/app/ic-question-circle.png',
        package: _packageName,
      );

  //deposit
  ImageProvider get qrcode => const AssetImage(
        'assets/images/deposit/qrcode.png',
        package: _packageName,
      );

  //gateway
  ImageProvider get infoDownlinkPrice => const AssetImage(
        'assets/images/gateway/info-downloadlink_price.png',
        package: _packageName,
      );

  ImageProvider get uptime => const AssetImage(
        'assets/images/gateway/uptime.png',
        package: _packageName,
      );

  ImageProvider get gps => const AssetImage(
        'assets/images/gateway/gps.png',
        package: _packageName,
      );

  ImageProvider get gpsDisabled => const AssetImage(
        'assets/images/gateway/gps_disabled.png',
        package: _packageName,
      );

  ImageProvider get altitude => const AssetImage(
        'assets/images/gateway/altitude.png',
        package: _packageName,
      );

  ImageProvider get altitudeDisabled => const AssetImage(
        'assets/images/gateway/altitude_disabled.png',
        package: _packageName,
      );

  ImageProvider get orientation => const AssetImage(
        'assets/images/gateway/orientation.png',
        package: _packageName,
      );

  ImageProvider get orientationDisabled => const AssetImage(
        'assets/images/gateway/orientation_disabled.png',
        package: _packageName,
      );

  ImageProvider get proximity => const AssetImage(
        'assets/images/gateway/proximity.png',
        package: _packageName,
      );

  ImageProvider get proximityDisabled => const AssetImage(
        'assets/images/gateway/proximity_disabled.png',
        package: _packageName,
      );

  ImageProvider get fuel => const AssetImage(
        'assets/images/gateway/fuel.png',
        package: _packageName,
      );

  ImageProvider get fuelCircle => const AssetImage(
        'assets/images/gateway/fuel_circle.png',
        package: _packageName,
      );

  ImageProvider get sendCircle => const AssetImage(
        'assets/images/gateway/send_circle.png',
        package: _packageName,
      );

  ImageProvider get addMinerSuccess => const AssetImage(
        'assets/images/gateway/add_miner_success.png',
        package: _packageName,
      );

  ImageProvider get addMinerFailure => const AssetImage(
        'assets/images/gateway/add_miner_failure.png',
        package: _packageName,
      );

  ImageProvider get addMinerWarning => const AssetImage(
        'assets/images/gateway/add_miner_warning.png',
        package: _packageName,
      );

  // login
  ImageProvider get supernodePlaceholder => const AssetImage(
        'assets/images/login/supernode_placeholder.png',
        package: _packageName,
      );

  ImageProvider get placeholder => const AssetImage(
        'assets/images/login/placeholder.png',
        package: _packageName,
      );

  ImageProvider get email => const AssetImage(
        'assets/images/login/email.png',
        package: _packageName,
      );

  ImageProvider get wechat => const AssetImage(
        'assets/images/login/wechat.png',
        package: _packageName,
      );

  ImageProvider get datadash => const AssetImage(
        'assets/images/login/datadash.png',
        package: _packageName,
      );

  ImageProvider get dhx => const AssetImage(
        'assets/images/login/dhx.png',
        package: _packageName,
      );

  ImageProvider get mxc => const AssetImage(
        'assets/images/login/mxc.png',
        package: _packageName,
      );

  ImageProvider get mxcSite1 => const AssetImage(
        'assets/images/login/mxc_1.png',
        package: _packageName,
      );

  ImageProvider get mxcSite2 => const AssetImage(
        'assets/images/login/mxc_2.png',
        package: _packageName,
      );

  ImageProvider get mxcSite3 => const AssetImage(
        'assets/images/login/mxc_3.png',
        package: _packageName,
      );

  ImageProvider get dhxSite => const AssetImage(
        'assets/images/login/dhx_site.png',
        package: _packageName,
      );

  ImageProvider get medium => const AssetImage(
        'assets/images/login/medium.png',
        package: _packageName,
      );

  // wallet
  ImageProvider get iconMine => const AssetImage(
        'assets/images/wallet/icon-mine.png',
        package: _packageName,
      );

  ImageProvider get iconBond => const AssetImage(
        'assets/images/wallet/bond.png',
        package: _packageName,
      );

  ImageProvider get iconLearn => const AssetImage(
        'assets/images/wallet/learn.png',
        package: _packageName,
      );

  ImageProvider get iconUnbond => const AssetImage(
        'assets/images/wallet/unbond.png',
        package: _packageName,
      );

  ImageProvider get iconCouncil => const AssetImage(
        'assets/images/wallet/icon-council.png',
        package: _packageName,
      );

  ImageProvider get council => const AssetImage(
        'assets/images/wallet/council.png',
        package: _packageName,
      );

  ImageProvider get infoMXCVault => const AssetImage(
        'assets/images/wallet/info-mxc-vault.png',
        package: _packageName,
      );

  ImageProvider get infoCurrentTransactionFee => const AssetImage(
        'assets/images/wallet/info-current-transaction-fee.png',
        package: _packageName,
      );

  ImageProvider get mcxBubble => const AssetImage(
        'assets/images/wallet/mxc_bubble.png',
        package: _packageName,
      );

  ImageProvider get minerBubble => const AssetImage(
        'assets/images/wallet/miner_bubble.png',
        package: _packageName,
      );

  ImageProvider get dhxMiningDiagram => const AssetImage(
        'assets/images/wallet/dhx_mining_diagram.png',
        package: _packageName,
      );

  ImageProvider get rocket => const AssetImage(
        'assets/images/wallet/rocket.png',
        package: _packageName,
      );

  ImageProvider get minerBoostGraph => const AssetImage(
        'assets/images/wallet/mining_boost_graph.png',
        package: _packageName,
      );

  ImageProvider get calendar1 => const AssetImage(
        'assets/images/wallet/calendar1.png',
        package: _packageName,
      );

  ImageProvider get calendar2 => const AssetImage(
        'assets/images/wallet/calendar2.png',
        package: _packageName,
      );

  ImageProvider get calendar3 => const AssetImage(
        'assets/images/wallet/calendar3.png',
        package: _packageName,
      );

  ImageProvider get iconYellowMiner => const AssetImage(
        'assets/images/wallet/btc_yellow_miner.png',
        package: _packageName,
      );

  ImageProvider get unlock => const AssetImage(
        'assets/images/wallet/unlock.png',
        package: _packageName,
      );

  ImageProvider get lock => const AssetImage(
        'assets/images/wallet/lock.png',
        package: _packageName,
      );

  //settings
  ImageProvider get warningRobot => const AssetImage(
        'assets/images/settings/robot_warning.png',
        package: _packageName,
      );

  ImageProvider get weChat => const AssetImage(
        'assets/images/settings/wechat.png',
        package: _packageName,
      );

  ImageProvider get weChatQRCode => const AssetImage(
        'assets/images/settings/wechat_qr_code.png',
        package: _packageName,
      );
}

class ImagesThemeDark extends ImagesTheme {
  const ImagesThemeDark._() : super._();

  @override
  ImageProvider get logoMxc => const AssetImage(
        'assets/images/wallet/logo-mxc-dark.png',
        package: _packageName,
      );

  @override
  ImageProvider get logoMxcBig => const AssetImage(
        'assets/images/wallet/logo-mxc-big-dark.png',
        package: _packageName,
      );

  @override
  ImageProvider get logoDhx => const AssetImage(
        'assets/images/wallet/logo-dhx-dark.png',
        package: _packageName,
      );

  @override
  ImageProvider get logoBtc => const AssetImage(
        'assets/images/wallet/logo-btc-dark.png',
        package: _packageName,
      );

  @override
  ImageProvider get logoBtcBig => const AssetImage(
        'assets/images/wallet/logo-btc-big-dark.png',
        package: _packageName,
      );

  //splash
  @override
  ImageProvider get splashLogo => const AssetImage(
        'assets/images/splash/logo-dark.png',
        package: _packageName,
      );

  // login
  @override
  ImageProvider get datadash => const AssetImage(
        'assets/images/login/datadash-dark.png',
        package: _packageName,
      );

  @override
  ImageProvider get dhx => const AssetImage(
        'assets/images/login/dhx-dark.png',
        package: _packageName,
      );

  @override
  ImageProvider get mxc => const AssetImage(
        'assets/images/login/mxc-dark.png',
        package: _packageName,
      );

  // wallet
  @override
  ImageProvider get minerBoostGraph => const AssetImage(
        'assets/images/wallet/mining_boost_graph-dark.png',
        package: _packageName,
      );

  @override
  ImageProvider get dhxMiningDiagram => const AssetImage(
        'assets/images/wallet/dhx_mining_diagram-dark.png',
        package: _packageName,
      );

  @override
  ImageProvider get calendar1 => const AssetImage(
        'assets/images/wallet/calendar1-dark.png',
        package: _packageName,
      );

  @override
  ImageProvider get calendar2 => const AssetImage(
        'assets/images/wallet/calendar2-dark.png',
        package: _packageName,
      );

  @override
  ImageProvider get calendar3 => const AssetImage(
        'assets/images/wallet/calendar3-dark.png',
        package: _packageName,
      );

  //gateway
  @override
  ImageProvider get uptime => const AssetImage(
        'assets/images/gateway/uptime-dark.png',
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
