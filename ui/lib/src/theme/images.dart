import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';
import 'package:provider/provider.dart';

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
        package: mxcUiPackageName,
      );
  ImageProvider get logoMxcBig => const AssetImage(
        'assets/images/wallet/logo-mxc-big.png',
        package: mxcUiPackageName,
      );
  ImageProvider get logoDhx => const AssetImage(
        'assets/images/wallet/logo-dhx.png',
        package: mxcUiPackageName,
      );
  ImageProvider get logoBtc => const AssetImage(
        'assets/images/wallet/logo-btc.png',
        package: mxcUiPackageName,
      );
  ImageProvider get logoBtcBig => const AssetImage(
        'assets/images/wallet/logo-btc-big.png',
        package: mxcUiPackageName,
      );
  ImageProvider get logoNft => const AssetImage(
        'assets/images/wallet/logo-nft.png',
        package: mxcUiPackageName,
      );

  //splash
  ImageProvider get splashLogo => const AssetImage(
        'assets/images/splash/logo.png',
        package: mxcUiPackageName,
      );

  //home
  ImageProvider get blueCircle => const AssetImage(
        'assets/images/home/bluecircle.png',
        package: mxcUiPackageName,
      );
  ImageProvider get gateways => const AssetImage(
        'assets/images/home/gateways.png',
        package: mxcUiPackageName,
      );
  ImageProvider get devices => const AssetImage(
        'assets/images/home/devices.png',
        package: mxcUiPackageName,
      );

  Map<String, ImageProvider> get bottomBarMenus => const {
        'home': AssetImage(
          'assets/images/home/home.png',
          package: mxcUiPackageName,
        ),
        'gateway': AssetImage(
          'assets/images/home/gateways.png',
          package: mxcUiPackageName,
        ),
        'device': AssetImage(
          'assets/images/home/devices.png',
          package: mxcUiPackageName,
        ),
        'wallet': AssetImage(
          'assets/images/home/wallet.png',
          package: mxcUiPackageName,
        ),
      };

  ImageProvider get calculator => const AssetImage(
        'assets/images/home/calculator.png',
        package: mxcUiPackageName,
      );

  ImageProvider get setting => const AssetImage(
        'assets/images/home/setting.png',
        package: mxcUiPackageName,
      );

  ImageProvider get faq => const AssetImage(
        'assets/images/home/faq.png',
        package: mxcUiPackageName,
      );

  //app
  ImageProvider get close => const AssetImage(
        'assets/images/app/close.png',
        package: mxcUiPackageName,
      );

  ImageProvider get done => const AssetImage(
        'assets/images/app/done.png',
        package: mxcUiPackageName,
      );

  ImageProvider get noData => const AssetImage(
        'assets/images/app/no-data.png',
        package: mxcUiPackageName,
      );

  ImageProvider get circleLogo => const AssetImage(
        'assets/images/app/logo-circle.png',
        package: mxcUiPackageName,
      );

  ImageProvider get questionCircle => const AssetImage(
        'assets/images/app/ic-question-circle.png',
        package: mxcUiPackageName,
      );

  //deposit
  ImageProvider get qrcode => const AssetImage(
        'assets/images/deposit/qrcode.png',
        package: mxcUiPackageName,
      );

  //gateway
  ImageProvider get infoDownlinkPrice => const AssetImage(
        'assets/images/gateway/info-downloadlink_price.png',
        package: mxcUiPackageName,
      );

  ImageProvider get uptime => const AssetImage(
        'assets/images/gateway/uptime.png',
        package: mxcUiPackageName,
      );

  ImageProvider get gps => const AssetImage(
        'assets/images/gateway/gps.png',
        package: mxcUiPackageName,
      );

  ImageProvider get gpsDisabled => const AssetImage(
        'assets/images/gateway/gps_disabled.png',
        package: mxcUiPackageName,
      );

  ImageProvider get altitude => const AssetImage(
        'assets/images/gateway/altitude.png',
        package: mxcUiPackageName,
      );

  ImageProvider get altitudeDisabled => const AssetImage(
        'assets/images/gateway/altitude_disabled.png',
        package: mxcUiPackageName,
      );

  ImageProvider get orientation => const AssetImage(
        'assets/images/gateway/orientation.png',
        package: mxcUiPackageName,
      );

  ImageProvider get orientationDisabled => const AssetImage(
        'assets/images/gateway/orientation_disabled.png',
        package: mxcUiPackageName,
      );

  ImageProvider get proximity => const AssetImage(
        'assets/images/gateway/proximity.png',
        package: mxcUiPackageName,
      );

  ImageProvider get proximityDisabled => const AssetImage(
        'assets/images/gateway/proximity_disabled.png',
        package: mxcUiPackageName,
      );

  ImageProvider get fuel => const AssetImage(
        'assets/images/gateway/fuel.png',
        package: mxcUiPackageName,
      );

  ImageProvider get fuelCircle => const AssetImage(
        'assets/images/gateway/fuel_circle.png',
        package: mxcUiPackageName,
      );

  ImageProvider get sendCircle => const AssetImage(
        'assets/images/gateway/send_circle.png',
        package: mxcUiPackageName,
      );

  ImageProvider get addMinerSuccess => const AssetImage(
        'assets/images/gateway/add_miner_success.png',
        package: mxcUiPackageName,
      );

  ImageProvider get addMinerFailure => const AssetImage(
        'assets/images/gateway/add_miner_failure.png',
        package: mxcUiPackageName,
      );

  ImageProvider get addMinerWarning => const AssetImage(
        'assets/images/gateway/add_miner_warning.png',
        package: mxcUiPackageName,
      );

  // login
  ImageProvider get supernodePlaceholder => const AssetImage(
        'assets/images/login/supernode_placeholder.png',
        package: mxcUiPackageName,
      );

  ImageProvider get placeholder => const AssetImage(
        'assets/images/login/placeholder.png',
        package: mxcUiPackageName,
      );

  ImageProvider get email => const AssetImage(
        'assets/images/login/email.png',
        package: mxcUiPackageName,
      );

  ImageProvider get wechat => const AssetImage(
        'assets/images/login/wechat.png',
        package: mxcUiPackageName,
      );

  ImageProvider get datadashLogo => const AssetImage(
        'assets/images/app/datadash-logo.png',
        package: mxcUiPackageName,
      );

  ImageProvider get datadash => const AssetImage(
        'assets/images/login/datadash.png',
        package: mxcUiPackageName,
      );

  ImageProvider get datadashBranding => const AssetImage(
        'assets/images/home/datadash_branding.png',
        package: mxcUiPackageName,
      );

  ImageProvider get security => const AssetImage(
        'assets/images/home/security.png',
        package: mxcUiPackageName,
      );

  ImageProvider get dhx => const AssetImage(
        'assets/images/login/dhx.png',
        package: mxcUiPackageName,
      );

  ImageProvider get mxc => const AssetImage(
        'assets/images/login/mxc.png',
        package: mxcUiPackageName,
      );

  ImageProvider get mxcSite1 => const AssetImage(
        'assets/images/login/mxc_1.png',
        package: mxcUiPackageName,
      );

  ImageProvider get mxcSite2 => const AssetImage(
        'assets/images/login/mxc_2.png',
        package: mxcUiPackageName,
      );

  ImageProvider get mxcSite3 => const AssetImage(
        'assets/images/login/mxc_3.png',
        package: mxcUiPackageName,
      );

  ImageProvider get dhxSite => const AssetImage(
        'assets/images/login/dhx_site.png',
        package: mxcUiPackageName,
      );

  ImageProvider get medium => const AssetImage(
        'assets/images/login/medium.png',
        package: mxcUiPackageName,
      );

  // wallet
  ImageProvider get iconMine => const AssetImage(
        'assets/images/wallet/icon-mine.png',
        package: mxcUiPackageName,
      );

  ImageProvider get iconBond => const AssetImage(
        'assets/images/wallet/bond.png',
        package: mxcUiPackageName,
      );

  ImageProvider get iconLearn => const AssetImage(
        'assets/images/wallet/learn.png',
        package: mxcUiPackageName,
      );

  ImageProvider get iconUnbond => const AssetImage(
        'assets/images/wallet/unbond.png',
        package: mxcUiPackageName,
      );

  ImageProvider get iconCouncil => const AssetImage(
        'assets/images/wallet/icon-council.png',
        package: mxcUiPackageName,
      );

  ImageProvider get council => const AssetImage(
        'assets/images/wallet/council.png',
        package: mxcUiPackageName,
      );

  ImageProvider get infoMXCVault => const AssetImage(
        'assets/images/wallet/info-mxc-vault.png',
        package: mxcUiPackageName,
      );

  ImageProvider get infoCurrentTransactionFee => const AssetImage(
        'assets/images/wallet/info-current-transaction-fee.png',
        package: mxcUiPackageName,
      );

  ImageProvider get mcxBubble => const AssetImage(
        'assets/images/wallet/mxc_bubble.png',
        package: mxcUiPackageName,
      );

  ImageProvider get minerBubble => const AssetImage(
        'assets/images/wallet/miner_bubble.png',
        package: mxcUiPackageName,
      );

  ImageProvider get dhxMiningDiagram => const AssetImage(
        'assets/images/wallet/dhx_mining_diagram.png',
        package: mxcUiPackageName,
      );

  ImageProvider get rocket => const AssetImage(
        'assets/images/wallet/rocket.png',
        package: mxcUiPackageName,
      );

  ImageProvider get minerBoostGraph => const AssetImage(
        'assets/images/wallet/mining_boost_graph.png',
        package: mxcUiPackageName,
      );

  ImageProvider get calendar1 => const AssetImage(
        'assets/images/wallet/calendar1.png',
        package: mxcUiPackageName,
      );

  ImageProvider get calendar2 => const AssetImage(
        'assets/images/wallet/calendar2.png',
        package: mxcUiPackageName,
      );

  ImageProvider get calendar3 => const AssetImage(
        'assets/images/wallet/calendar3.png',
        package: mxcUiPackageName,
      );

  ImageProvider get iconYellowMiner => const AssetImage(
        'assets/images/wallet/btc_yellow_miner.png',
        package: mxcUiPackageName,
      );

  ImageProvider get unlock => const AssetImage(
        'assets/images/wallet/unlock.png',
        package: mxcUiPackageName,
      );

  ImageProvider get lock => const AssetImage(
        'assets/images/wallet/lock.png',
        package: mxcUiPackageName,
      );

  ImageProvider get iconOpenLock => const AssetImage(
        'assets/images/wallet/icon-open-lock.png',
        package: mxcUiPackageName,
      );

  //settings
  ImageProvider get warningRobot => const AssetImage(
        'assets/images/settings/robot_warning.png',
        package: mxcUiPackageName,
      );

  ImageProvider get weChat => const AssetImage(
        'assets/images/settings/wechat.png',
        package: mxcUiPackageName,
      );

  ImageProvider get weChatQRCode => const AssetImage(
        'assets/images/settings/wechat_qr_code.png',
        package: mxcUiPackageName,
      );

  ImageProvider get datadashIcon => const AssetImage(
        'assets/images/settings/datadash_icon.png',
        package: mxcUiPackageName,
      );

  // maintenance

  ImageProvider get maintenanceRobot => const AssetImage(
        'assets/images/maintenance/robot.png',
        package: mxcUiPackageName,
      );

  // connectivity

  ImageProvider get connectivity => const AssetImage(
        'assets/images/connectivity/connectivity.png',
        package: mxcUiPackageName,
      );

  ImageProvider get connectivityRobot => const AssetImage(
        'assets/images/connectivity/robot.png',
        package: mxcUiPackageName,
      );

  AssetImage get mapTitleRectangleBox => const AssetImage(
        'assets/images/map/map_title_rectangle_box.png',
        package: mxcUiPackageName,
      );
}

class ImagesThemeDark extends ImagesTheme {
  const ImagesThemeDark._() : super._();

  @override
  ImageProvider get logoMxc => const AssetImage(
        'assets/images/wallet/logo-mxc-dark.png',
        package: mxcUiPackageName,
      );

  @override
  ImageProvider get logoMxcBig => const AssetImage(
        'assets/images/wallet/logo-mxc-big-dark.png',
        package: mxcUiPackageName,
      );

  @override
  ImageProvider get logoDhx => const AssetImage(
        'assets/images/wallet/logo-dhx-dark.png',
        package: mxcUiPackageName,
      );

  @override
  ImageProvider get logoBtc => const AssetImage(
        'assets/images/wallet/logo-btc-dark.png',
        package: mxcUiPackageName,
      );

  @override
  ImageProvider get logoBtcBig => const AssetImage(
        'assets/images/wallet/logo-btc-big-dark.png',
        package: mxcUiPackageName,
      );

  //splash
  @override
  ImageProvider get splashLogo => const AssetImage(
        'assets/images/splash/logo-dark.png',
        package: mxcUiPackageName,
      );

  // login
  @override
  ImageProvider get datadash => const AssetImage(
        'assets/images/login/datadash-dark.png',
        package: mxcUiPackageName,
      );

  @override
  ImageProvider get dhx => const AssetImage(
        'assets/images/login/dhx-dark.png',
        package: mxcUiPackageName,
      );

  @override
  ImageProvider get mxc => const AssetImage(
        'assets/images/login/mxc-dark.png',
        package: mxcUiPackageName,
      );

  // wallet
  @override
  ImageProvider get minerBoostGraph => const AssetImage(
        'assets/images/wallet/mining_boost_graph-dark.png',
        package: mxcUiPackageName,
      );

  @override
  ImageProvider get dhxMiningDiagram => const AssetImage(
        'assets/images/wallet/dhx_mining_diagram-dark.png',
        package: mxcUiPackageName,
      );

  @override
  ImageProvider get calendar1 => const AssetImage(
        'assets/images/wallet/calendar1-dark.png',
        package: mxcUiPackageName,
      );

  @override
  ImageProvider get calendar2 => const AssetImage(
        'assets/images/wallet/calendar2-dark.png',
        package: mxcUiPackageName,
      );

  @override
  ImageProvider get calendar3 => const AssetImage(
        'assets/images/wallet/calendar3-dark.png',
        package: mxcUiPackageName,
      );

  //gateway
  @override
  ImageProvider get uptime => const AssetImage(
        'assets/images/gateway/uptime-dark.png',
        package: mxcUiPackageName,
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
