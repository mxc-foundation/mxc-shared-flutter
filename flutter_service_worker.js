'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "b72194eaff42c5e10688721887c42ecb",
"version.json": "4b6db237b3514a88107a422469adfb0f",
"manifest.json": "15f73b7e8a8209c2206210b3ac8dea1b",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"index.html": "0c08963fd02b36a35abd8776599532d9",
"/": "0c08963fd02b36a35abd8776599532d9",
"assets/NOTICES": "f837f810255eafb222e0cf4265ba40eb",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/AssetManifest.json": "1c8dfde354266c50b3b3600d15f067e0",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/mxc_ui/assets/images/settings/wechat.png": "02b2a8c21b43752f1acc29b7b6ab3453",
"assets/packages/mxc_ui/assets/images/settings/robot_warning.png": "cce8334552027d1a206abe06bcacf804",
"assets/packages/mxc_ui/assets/images/settings/wechat_qr_code.png": "1d544a4751283865bef4dfee082f7897",
"assets/packages/mxc_ui/assets/images/settings/3.0x/wechat.png": "f3155c296d8fe686d8315e85b82b93ac",
"assets/packages/mxc_ui/assets/images/settings/3.0x/robot_warning.png": "7c48f803404c7cd7b5a99c0c03802c43",
"assets/packages/mxc_ui/assets/images/settings/2.0x/wechat.png": "7e7236365cea0140f5051a98869ba619",
"assets/packages/mxc_ui/assets/images/settings/2.0x/robot_warning.png": "db3b924d452838cb75fa73ff3e721a6c",
"assets/packages/mxc_ui/assets/images/withdraw/qrcode.png": "81199afe26d00cddc00864c99af37186",
"assets/packages/mxc_ui/assets/images/withdraw/deposit/qrcode.png": "81199afe26d00cddc00864c99af37186",
"assets/packages/mxc_ui/assets/images/withdraw/deposit/3.0x/qrcode.png": "e414b68b47872b14a0bdf0f69ba4cd78",
"assets/packages/mxc_ui/assets/images/withdraw/deposit/2.0x/qrcode.png": "af8b11cc5216e44fe47bd6a523d6ead0",
"assets/packages/mxc_ui/assets/images/withdraw/3.0x/qrcode.png": "e414b68b47872b14a0bdf0f69ba4cd78",
"assets/packages/mxc_ui/assets/images/withdraw/2.0x/qrcode.png": "af8b11cc5216e44fe47bd6a523d6ead0",
"assets/packages/mxc_ui/assets/images/splash/logo-dark.png": "466a2a2814d22fee9978e4504f352ec1",
"assets/packages/mxc_ui/assets/images/splash/logo.png": "21b650cf4f76accd993d5710ba771d02",
"assets/packages/mxc_ui/assets/images/splash/3.0x/logo-dark.png": "1931d373ea74501ee0c072034b195a10",
"assets/packages/mxc_ui/assets/images/splash/3.0x/logo.png": "4760c53eefaa543b5a4ee3ea87bc2dca",
"assets/packages/mxc_ui/assets/images/splash/2.0x/logo-dark.png": "96d69fa26c9d43b84e87db7da4b3746b",
"assets/packages/mxc_ui/assets/images/splash/2.0x/logo.png": "ecd70a4719ac2ed196b5d792dcfe3f2c",
"assets/packages/mxc_ui/assets/images/gateway/add_miner_success.png": "7b3da9390c788273bd5bbc52acf12353",
"assets/packages/mxc_ui/assets/images/gateway/uptime.png": "38f5f87291ae74451e39a17872fe5209",
"assets/packages/mxc_ui/assets/images/gateway/send_circle.png": "063f8c1414f9750a4b7171a74df0fe7e",
"assets/packages/mxc_ui/assets/images/gateway/gps.png": "de484f2daff7b38b74d9c2a24192e4d6",
"assets/packages/mxc_ui/assets/images/gateway/info-downloadlink_price.png": "f8b3a814af7617bea89b900a9ce567ec",
"assets/packages/mxc_ui/assets/images/gateway/fuel.png": "f7da0505049435ec6c955c4b2d391613",
"assets/packages/mxc_ui/assets/images/gateway/altitude_disabled.png": "caf0d014aabc12e3d465b7c9f7835997",
"assets/packages/mxc_ui/assets/images/gateway/orientation.png": "be195962d1958205e7eee5c66743cf06",
"assets/packages/mxc_ui/assets/images/gateway/altitude.png": "f1a43620f5f37e5e8ba43930bb5a9ce8",
"assets/packages/mxc_ui/assets/images/gateway/add_miner_warning.png": "2bfeb8911ace4ff2d28758d848327be3",
"assets/packages/mxc_ui/assets/images/gateway/add_miner_failure.png": "64f3625586829b9cf6fd2d5009cbf30d",
"assets/packages/mxc_ui/assets/images/gateway/proximity.png": "5249ad566c45d47c3817f2039e4909a0",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/add_miner_success.png": "3853eb0935f4bc9cf4848ecca2183f7b",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/uptime.png": "8c93a5303651ab13175275aacf018b4f",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/send_circle.png": "409aad28390c0df172a9f3b0acc46e1b",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/gps.png": "eed7eaf3d85d33b6794006c776005d9d",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/info-downloadlink_price.png": "303e21eb0457bd76a0217bb9cde42bad",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/fuel.png": "45b495f422bd11135d297ed840df7afc",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/altitude_disabled.png": "e2d1b51d02e9f8dfa3423547d3090de7",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/orientation.png": "87ad0cbe002fef0f4c3e29b8e7066f46",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/altitude.png": "bc5a4c0a51b3a5322f28d43d9bc65939",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/add_miner_warning.png": "7ea843ffbe3996288422deffe00deb98",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/add_miner_failure.png": "bb572fdbb3851d9c7edb18da65ac1f37",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/proximity.png": "fe19c30e9332127e26a5cc4b50844360",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/orientation_disabled.png": "21fdd5bae5b14deb54c9342c00cbe9a7",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/fuel_circle.png": "fbc2eedc24ad52a27a4140fcb9102792",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/gps_disabled.png": "7c1477ccceae9ef033f58e07b1662638",
"assets/packages/mxc_ui/assets/images/gateway/3.0x/proximity_disabled.png": "a05c9350aa0347a17732c6fa3b1a0ff7",
"assets/packages/mxc_ui/assets/images/gateway/orientation_disabled.png": "cc303043257ab4fa50f2e21800337145",
"assets/packages/mxc_ui/assets/images/gateway/fuel_circle.png": "06e6268afdf4860d41eaf0d8b2f257c3",
"assets/packages/mxc_ui/assets/images/gateway/gps_disabled.png": "14ad7acc9743327d14094fafc84f2b4c",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/add_miner_success.png": "ecbed7296525a51a581cfa3bead79445",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/uptime.png": "3ccff4b656f8c52c373a939c7491b43f",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/send_circle.png": "e0930fc71d3495ff28660077cbe55f7c",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/gps.png": "6d108093e21e2d6aae25bfdfa0a49188",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/info-downloadlink_price.png": "e8d2c85aca222c3c82b634451cec5377",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/fuel.png": "11664dbcbff89398379449c519a0b29e",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/altitude_disabled.png": "3565728a7371f42ff3443400e0540288",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/orientation.png": "ad0775bb9fad40fd15d958eea3d47635",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/altitude.png": "f87541152d821bcdc2fe7250f76d679b",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/add_miner_warning.png": "8becedf8606851cf4dc1fec8c61a6c41",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/add_miner_failure.png": "ad27c5ad3f4c6e7620c54fc9a1541c49",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/proximity.png": "9f8515026cb66c0b19e75d86006b43a5",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/orientation_disabled.png": "d6485d230503d5f305239ab8ab9e4081",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/fuel_circle.png": "b670f918bf8f209d8514678f68f2274b",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/gps_disabled.png": "d9c4cadd71f11c9289da2cb6e9ca2aea",
"assets/packages/mxc_ui/assets/images/gateway/2.0x/proximity_disabled.png": "c857397fc7beaf67b4c601499f73f60d",
"assets/packages/mxc_ui/assets/images/gateway/proximity_disabled.png": "957617ed204ba0ab702283dacc3b920f",
"assets/packages/mxc_ui/assets/images/device/gatwary_location.png": "1e2feae665a3e58baeafcd4e397ddb96",
"assets/packages/mxc_ui/assets/images/device/notification.png": "056cd046f40314907efd7e23092911e8",
"assets/packages/mxc_ui/assets/images/device/solid-camera.png": "c733b80f615d0ffb4dc13cf8d4e0ab94",
"assets/packages/mxc_ui/assets/images/device/location_warn.png": "c7d713fb0568d5186617f4f80fcc93a7",
"assets/packages/mxc_ui/assets/images/device/point_pin.png": "4177bcc2180d2bbe93f539c1f69d86c0",
"assets/packages/mxc_ui/assets/images/device/itr_1.png": "d3bbcaa11364899a3767c7fdd5c081fd",
"assets/packages/mxc_ui/assets/images/device/signal.png": "16f4a258502f2b644b2fef18d944bcf4",
"assets/packages/mxc_ui/assets/images/device/signal_bg.png": "b482e2d609c308d897acb876986779b0",
"assets/packages/mxc_ui/assets/images/device/arrow_gatway.png": "b421a8d8706899e93427f67274331f7f",
"assets/packages/mxc_ui/assets/images/device/progress.png": "fe82fdc438708ba820554d4a5adac286",
"assets/packages/mxc_ui/assets/images/device/itr_2.png": "e9ee18a1a88c5ef310f327c77624eee9",
"assets/packages/mxc_ui/assets/images/device/location.png": "c5310642aa9e950e6659194a76f96bc1",
"assets/packages/mxc_ui/assets/images/device/map_bg.png": "74925cb7a439c8491fa7e873a69bd86e",
"assets/packages/mxc_ui/assets/images/device/PIN.png": "36c2ac0ddd8ef4f7a495033c074c077f",
"assets/packages/mxc_ui/assets/images/device/notification_location.png": "3e21835c5de231eaba4ea706e7c54185",
"assets/packages/mxc_ui/assets/images/device/3.0x/gatwary_location.png": "77e62e42b0316f6bc609be585790060f",
"assets/packages/mxc_ui/assets/images/device/3.0x/notification.png": "ea00a0611c34a02f0de47e89063929df",
"assets/packages/mxc_ui/assets/images/device/3.0x/solid-camera.png": "ad0e2f44cf6367d4670d68d4934f1e04",
"assets/packages/mxc_ui/assets/images/device/3.0x/location_warn.png": "7e8540837855e2750717f4fecdba0492",
"assets/packages/mxc_ui/assets/images/device/3.0x/point_pin.png": "9eda3d130c2644a2ee85bc43f29d4acb",
"assets/packages/mxc_ui/assets/images/device/3.0x/itr_1.png": "4475b6760ee4cbbe5371f46427b802ec",
"assets/packages/mxc_ui/assets/images/device/3.0x/signal.png": "ce87709c399fccfc6b387981834ac932",
"assets/packages/mxc_ui/assets/images/device/3.0x/signal_bg.png": "55b3a1e69c9ce0456c8efd2b8b7c1355",
"assets/packages/mxc_ui/assets/images/device/3.0x/arrow_gatway.png": "3fa78e22f0a16a4f8dc789c46ad628b9",
"assets/packages/mxc_ui/assets/images/device/3.0x/progress.png": "b26d028706eb2afbf41c300d041f5cf5",
"assets/packages/mxc_ui/assets/images/device/3.0x/itr_2.png": "9b17c62dd20028b821131aa6e60c31da",
"assets/packages/mxc_ui/assets/images/device/3.0x/location.png": "90a2cec45e3d8d969c2ef979d0bbcd51",
"assets/packages/mxc_ui/assets/images/device/3.0x/map_bg.png": "48fc0da80c59362ffe78d2f15f55ee74",
"assets/packages/mxc_ui/assets/images/device/3.0x/PIN.png": "0ee845fdf8508b2b92aeb090b5a0eda3",
"assets/packages/mxc_ui/assets/images/device/3.0x/notification_location.png": "987dba068b10fc4b355d1f6297c6f34e",
"assets/packages/mxc_ui/assets/images/device/3.0x/notification_bg.png": "9ac1dde7668cdc92ea8795ae35adce8e",
"assets/packages/mxc_ui/assets/images/device/3.0x/watch_location.png": "2d5296baddcd6e49f5140821b5a63fc8",
"assets/packages/mxc_ui/assets/images/device/3.0x/map.png": "bb9ef2731ca5faa1e574ef9b7c48750b",
"assets/packages/mxc_ui/assets/images/device/notification_bg.png": "2d09f306474d44fbf98a64658c610454",
"assets/packages/mxc_ui/assets/images/device/watch_location.png": "a54ebd605e2a79fa55d3483e8eb66f3e",
"assets/packages/mxc_ui/assets/images/device/2.0x/gatwary_location.png": "1e2feae665a3e58baeafcd4e397ddb96",
"assets/packages/mxc_ui/assets/images/device/2.0x/notification.png": "155574982c7e397e3fe1c54c6cb77c69",
"assets/packages/mxc_ui/assets/images/device/2.0x/solid-camera.png": "6c7703b7f204815d23c1a26df3da1cf1",
"assets/packages/mxc_ui/assets/images/device/2.0x/location_warn.png": "bc3e1844d6495c98c46b9fc1ac8f7849",
"assets/packages/mxc_ui/assets/images/device/2.0x/point_pin.png": "01885a8a3a432f56d9e24437a722a785",
"assets/packages/mxc_ui/assets/images/device/2.0x/itr_1.png": "657de53f229eb429c0b78a37a2d760b0",
"assets/packages/mxc_ui/assets/images/device/2.0x/signal.png": "03eafc3c0388d4cdce25087745b60481",
"assets/packages/mxc_ui/assets/images/device/2.0x/signal_bg.png": "4e26294e0c106afd2e2babd7443ebb4b",
"assets/packages/mxc_ui/assets/images/device/2.0x/arrow_gatway.png": "3ad74405e4905d13710483731425cb5c",
"assets/packages/mxc_ui/assets/images/device/2.0x/progress.png": "cc1dea0aaae3d81e25cbf3c393f9f714",
"assets/packages/mxc_ui/assets/images/device/2.0x/itr_2.png": "7b867b077f437159208a6703ac00ede6",
"assets/packages/mxc_ui/assets/images/device/2.0x/location.png": "9842d81bcc49b9737de16a8dd6ac29e7",
"assets/packages/mxc_ui/assets/images/device/2.0x/map_bg.png": "a598b57786db9dc106324d4514aaeea8",
"assets/packages/mxc_ui/assets/images/device/2.0x/PIN.png": "36c2ac0ddd8ef4f7a495033c074c077f",
"assets/packages/mxc_ui/assets/images/device/2.0x/notification_location.png": "d15819ac85cc0086520e900a6d2ebdbd",
"assets/packages/mxc_ui/assets/images/device/2.0x/notification_bg.png": "ec385a505b75f477b07703622982fe90",
"assets/packages/mxc_ui/assets/images/device/2.0x/watch_location.png": "a54ebd605e2a79fa55d3483e8eb66f3e",
"assets/packages/mxc_ui/assets/images/device/2.0x/map.png": "62e1abd3e7039923256442a583b30c4c",
"assets/packages/mxc_ui/assets/images/device/map.png": "f18493dcb634e1ec9ac55f2471e82c43",
"assets/packages/mxc_ui/assets/images/connectivity/robot.png": "bbf855f158e85db118886dc8f9b07897",
"assets/packages/mxc_ui/assets/images/connectivity/connectivity.png": "495625cfa21cde00b086917eea169f59",
"assets/packages/mxc_ui/assets/images/connectivity/3.0x/robot.png": "3533849f96937a68c6b0b536d2a51b68",
"assets/packages/mxc_ui/assets/images/connectivity/3.0x/connectivity.png": "f708ba2d53478a0ea5987c315ff0b127",
"assets/packages/mxc_ui/assets/images/connectivity/2.0x/robot.png": "5a449d114e4e6d7625edb49876300d43",
"assets/packages/mxc_ui/assets/images/connectivity/2.0x/connectivity.png": "d49b97dfe6792b4f91e2ba2de52cb7e3",
"assets/packages/mxc_ui/assets/images/stake/qrcode.png": "81199afe26d00cddc00864c99af37186",
"assets/packages/mxc_ui/assets/images/stake/3.0x/qrcode.png": "e414b68b47872b14a0bdf0f69ba4cd78",
"assets/packages/mxc_ui/assets/images/stake/2.0x/qrcode.png": "af8b11cc5216e44fe47bd6a523d6ead0",
"assets/packages/mxc_ui/assets/images/login/dhx.png": "f93047a3d1c3212a31f32ea2b9699a2e",
"assets/packages/mxc_ui/assets/images/login/datadash.png": "4d139e6cb1853666e2c4608c114a3410",
"assets/packages/mxc_ui/assets/images/login/huwa.png": "da06b505020cf331d2181c900e119736",
"assets/packages/mxc_ui/assets/images/login/supernode_placeholder.png": "5b289faffdc921c825d05bfd6f67a2cf",
"assets/packages/mxc_ui/assets/images/login/xinyu.png": "69205072ca48c46257804d2a2ae91464",
"assets/packages/mxc_ui/assets/images/login/medium.png": "6ad58e5ee4eb2187f47465361b470c42",
"assets/packages/mxc_ui/assets/images/login/mxc-dark.png": "16812fde0d368124e6cf0583b44fd8dc",
"assets/packages/mxc_ui/assets/images/login/wechat.png": "261b5d1fb5eb2aa5a9c324976861a695",
"assets/packages/mxc_ui/assets/images/login/datadash_dark.png": "7e038362fa1c44b029b95bf500529090",
"assets/packages/mxc_ui/assets/images/login/mxc_1.png": "21363e46490e5cd8673ed93db969af0a",
"assets/packages/mxc_ui/assets/images/login/mxc_2.png": "0d71eea6bbb2e8d6d047fe474d746ab6",
"assets/packages/mxc_ui/assets/images/login/matchx.png": "06213847d1a47c1f45c3483ae926f247",
"assets/packages/mxc_ui/assets/images/login/enlink.png": "81d0e7d7c2948987179eed8edc7da44a",
"assets/packages/mxc_ui/assets/images/login/dhx-dark.png": "1b9eb65193be1ab84781d1e0022a1d90",
"assets/packages/mxc_ui/assets/images/login/placeholder.png": "153f094a2bb019fcf7ee9d6f18bdbdb8",
"assets/packages/mxc_ui/assets/images/login/datadash-dark.png": "ea15de7898164cd0ef3b94412bd03361",
"assets/packages/mxc_ui/assets/images/login/dhx_site.png": "992cb544139b89ad84891c279515720e",
"assets/packages/mxc_ui/assets/images/login/3.0x/dhx.png": "6cbecc1f164175c4ff3d6d88b79a6800",
"assets/packages/mxc_ui/assets/images/login/3.0x/datadash.png": "e3740a749579632cadacd0b44372d991",
"assets/packages/mxc_ui/assets/images/login/3.0x/huwa.png": "1bb2ef980b9e9054d8a386cefd372b2f",
"assets/packages/mxc_ui/assets/images/login/3.0x/supernode_placeholder.png": "c3c1ede14ea211c9612ea59ec5d79f85",
"assets/packages/mxc_ui/assets/images/login/3.0x/xinyu.png": "747f0ba1e78309af131be342b1a0e89a",
"assets/packages/mxc_ui/assets/images/login/3.0x/medium.png": "7bf0e096afd5441035a808db20992800",
"assets/packages/mxc_ui/assets/images/login/3.0x/mxc-dark.png": "bb485bc39e78142b01abe05afbfea19a",
"assets/packages/mxc_ui/assets/images/login/3.0x/wechat.png": "128a32c10ae942577b94a5804561ecb8",
"assets/packages/mxc_ui/assets/images/login/3.0x/datadash_dark.png": "9064f9574cc39e29c2d51e47233a4aee",
"assets/packages/mxc_ui/assets/images/login/3.0x/mxc_1.png": "974aaad8c4b856a69d8b2befbddd4f4b",
"assets/packages/mxc_ui/assets/images/login/3.0x/mxc_2.png": "a4d97a8dbb279244eda5428259c881af",
"assets/packages/mxc_ui/assets/images/login/3.0x/matchx.png": "92f1ec11c29fb5aa572713ff1f2cb0ef",
"assets/packages/mxc_ui/assets/images/login/3.0x/enlink.png": "d1acf28c1666d9be2fbca5aa76fcf64e",
"assets/packages/mxc_ui/assets/images/login/3.0x/dhx-dark.png": "07ee26b96ab3b8b56456632eca31fd15",
"assets/packages/mxc_ui/assets/images/login/3.0x/datadash-dark.png": "a880395e4a45cdb1a081a37317fd6719",
"assets/packages/mxc_ui/assets/images/login/3.0x/dhx_site.png": "51481b3272dc9f0310cfd2ca290b11d9",
"assets/packages/mxc_ui/assets/images/login/3.0x/email.png": "8625c476e4e8fc728de5948db03a6797",
"assets/packages/mxc_ui/assets/images/login/3.0x/mxc.png": "4a3bf773c240e2790a58b777c12be00c",
"assets/packages/mxc_ui/assets/images/login/3.0x/mxc_3.png": "aee4afa95485d4b74c09f41888646dc6",
"assets/packages/mxc_ui/assets/images/login/email.png": "d26885d8f9cb2c6a4a4a4eb5921c72b4",
"assets/packages/mxc_ui/assets/images/login/mxc.png": "95572f60097c49942c0a49414e994498",
"assets/packages/mxc_ui/assets/images/login/mxc_3.png": "867dd85e6bbe36757cc5c44eae2775bf",
"assets/packages/mxc_ui/assets/images/login/2.0x/dhx.png": "62ec2921b940badc534eeea575d7f9b2",
"assets/packages/mxc_ui/assets/images/login/2.0x/datadash.png": "5b2e087b1a0ca2e683253f2ecc70bd25",
"assets/packages/mxc_ui/assets/images/login/2.0x/huwa.png": "b985ab73410cf73065bf1152879541e2",
"assets/packages/mxc_ui/assets/images/login/2.0x/supernode_placeholder.png": "36e96a9252d27c1f775498a18e279d98",
"assets/packages/mxc_ui/assets/images/login/2.0x/xinyu.png": "56399c608d0978c009586e8ddbd9cb1a",
"assets/packages/mxc_ui/assets/images/login/2.0x/medium.png": "3a05d5537c8e21115209519f813a14d9",
"assets/packages/mxc_ui/assets/images/login/2.0x/mxc-dark.png": "44b51025c811e97c8141890d4e1ebf3e",
"assets/packages/mxc_ui/assets/images/login/2.0x/wechat.png": "51e1d7b0711da98c66389305befcd11a",
"assets/packages/mxc_ui/assets/images/login/2.0x/datadash_dark.png": "b6c354e35a43bbb35d823b1fa31791ac",
"assets/packages/mxc_ui/assets/images/login/2.0x/mxc_1.png": "9b5064f1566e01f74d56156ac224d4db",
"assets/packages/mxc_ui/assets/images/login/2.0x/mxc_2.png": "3eddb8de3c405cef22e2a072269649ea",
"assets/packages/mxc_ui/assets/images/login/2.0x/matchx.png": "915f7b7978c43de9c6b0feed8111e0f7",
"assets/packages/mxc_ui/assets/images/login/2.0x/enlink.png": "9494f2ea387305f019a04578a417cb70",
"assets/packages/mxc_ui/assets/images/login/2.0x/dhx-dark.png": "c305404faaebc59d6138fbeaa488797d",
"assets/packages/mxc_ui/assets/images/login/2.0x/datadash-dark.png": "2e6b6207168b29796b4777c45f23341a",
"assets/packages/mxc_ui/assets/images/login/2.0x/dhx_site.png": "e59b77c6168359dbd42562c403583d21",
"assets/packages/mxc_ui/assets/images/login/2.0x/email.png": "c0013ad2547f2e2c5e392fab7300f510",
"assets/packages/mxc_ui/assets/images/login/2.0x/mxc.png": "38ad63fd4344765e2b1d3c3a540ebb18",
"assets/packages/mxc_ui/assets/images/login/2.0x/mxc_3.png": "426a294f6aa5207d78be5f22c3c14ba3",
"assets/packages/mxc_ui/assets/images/calculator/currencies/cny.png": "2dd622406dfd9de93aca1a6db74a5fe5",
"assets/packages/mxc_ui/assets/images/calculator/currencies/eos.png": "e588e52c72b109fa16b967d7334a806e",
"assets/packages/mxc_ui/assets/images/calculator/currencies/hkd.png": "e7c8c84240a40aa99786579d03647bbf",
"assets/packages/mxc_ui/assets/images/calculator/currencies/idr.png": "7ebb97a68fb32f73a0ad2b1aaf48a760",
"assets/packages/mxc_ui/assets/images/calculator/currencies/ltc.png": "6b5bc453bc8861d087476bfbadab0041",
"assets/packages/mxc_ui/assets/images/calculator/currencies/eth.png": "348c1584b6b50d226ff05e2d22e1df75",
"assets/packages/mxc_ui/assets/images/calculator/currencies/pkr.png": "36ed51373f8b9bae1dc4318a3c29340c",
"assets/packages/mxc_ui/assets/images/calculator/currencies/krw.png": "dbd974c751e63c95ac2c2d093950596e",
"assets/packages/mxc_ui/assets/images/calculator/currencies/nzd.png": "f7535ee47333147423f9f06156e9bb88",
"assets/packages/mxc_ui/assets/images/calculator/currencies/kwd.png": "3d3b8b009284f6afe24df2cab6fadf62",
"assets/packages/mxc_ui/assets/images/calculator/currencies/inr.png": "cc64676ae6c36de5e81d81a9cfe39373",
"assets/packages/mxc_ui/assets/images/calculator/currencies/aed.png": "d51d1ff03d66fef4fea7180858046ee4",
"assets/packages/mxc_ui/assets/images/calculator/currencies/gbp.png": "2b98cd4f918371d222d6c7e56c3e11ed",
"assets/packages/mxc_ui/assets/images/calculator/currencies/clp.png": "54a6b2b546ca4d647748b3e9d6bdd678",
"assets/packages/mxc_ui/assets/images/calculator/currencies/rub.png": "9f0d497c3513a3bc9a918ac21fe7de43",
"assets/packages/mxc_ui/assets/images/calculator/currencies/dkk.png": "43e16f7e8a30d4d2539dda3098a95cfc",
"assets/packages/mxc_ui/assets/images/calculator/currencies/ars.png": "6a22e7fbf5402cb6c86dcf66e0b95c82",
"assets/packages/mxc_ui/assets/images/calculator/currencies/usd.png": "b8ea5e1564bdde59eeb02271d004527b",
"assets/packages/mxc_ui/assets/images/calculator/currencies/aud.png": "e60fcf23cfe93b615cec4e312ed68844",
"assets/packages/mxc_ui/assets/images/calculator/currencies/uah.png": "293358ce9da886c8f1f67a121a7a88d1",
"assets/packages/mxc_ui/assets/images/calculator/currencies/bhd.png": "7135bb4ee72070a0d847c5038d93ce1b",
"assets/packages/mxc_ui/assets/images/calculator/currencies/btc.png": "fb5cabb582ee3af0ed04a37b464bb1ff",
"assets/packages/mxc_ui/assets/images/calculator/currencies/bnb.png": "ec7a31c960a83811308dc1269274ab01",
"assets/packages/mxc_ui/assets/images/calculator/currencies/zar.png": "0d7b9db9a1cf775864829f2e9250cae8",
"assets/packages/mxc_ui/assets/images/calculator/currencies/jpy.png": "90f4260a5a2b69ed0712fd7067961ed9",
"assets/packages/mxc_ui/assets/images/calculator/currencies/xrp.png": "d29a58abdaec8a4b308f5d8d987a5562",
"assets/packages/mxc_ui/assets/images/calculator/currencies/brl.png": "c02044448ab99347feaa4098255c1c17",
"assets/packages/mxc_ui/assets/images/calculator/currencies/lkr.png": "f3018c1eb65ad0600aabeb7e6ccde672",
"assets/packages/mxc_ui/assets/images/calculator/currencies/vnd.png": "d74b8deb658d11d22cbf0cea25995ef0",
"assets/packages/mxc_ui/assets/images/calculator/currencies/eur.png": "ffe268e14d2f0c043a8f804e34544302",
"assets/packages/mxc_ui/assets/images/calculator/currencies/pln.png": "d30a7d43e2526d3d7714ef2b1d4b1e65",
"assets/packages/mxc_ui/assets/images/calculator/currencies/try.png": "556f00268fc04cdaaf71e59cbf949b89",
"assets/packages/mxc_ui/assets/images/calculator/currencies/huf.png": "cc6f2f3c516c36c6182236123b3ecba2",
"assets/packages/mxc_ui/assets/images/calculator/currencies/php.png": "1875decd4e296dfbf9b3a026cbaaf1fa",
"assets/packages/mxc_ui/assets/images/calculator/currencies/chf.png": "f2f892b9c61e89907deaf3ad642306cf",
"assets/packages/mxc_ui/assets/images/calculator/currencies/twd.png": "ce51bb7a59682378076129d4506cc91b",
"assets/packages/mxc_ui/assets/images/calculator/currencies/sek.png": "cbe8b613e9097d298b9e3c6983744748",
"assets/packages/mxc_ui/assets/images/calculator/currencies/xlm.png": "0d8e1d5f9ad1ac6bb4b218742a4d99cd",
"assets/packages/mxc_ui/assets/images/calculator/currencies/nok.png": "c6f716bb8b87252008b11c3a3691dca5",
"assets/packages/mxc_ui/assets/images/calculator/currencies/bch.png": "bb1b00d2e834483812a490ed65935f4e",
"assets/packages/mxc_ui/assets/images/calculator/currencies/myr.png": "c86be373a26e7d59413dd7fe34208bfd",
"assets/packages/mxc_ui/assets/images/calculator/currencies/bmd.png": "c1eba6f6547b317073e88ed42d5056f4",
"assets/packages/mxc_ui/assets/images/calculator/currencies/cad.png": "9e0c761f4a8a8197e69f75c331cbdb24",
"assets/packages/mxc_ui/assets/images/calculator/currencies/bdt.png": "0ad23060cc3bd6f9e7df4776580f3b49",
"assets/packages/mxc_ui/assets/images/calculator/currencies/vef.png": "ceeaf815ef8b89aa39be01743f0388b3",
"assets/packages/mxc_ui/assets/images/calculator/currencies/tbh.png": "d1139e06cf3fb16054fec6167128a7e1",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/cny.png": "6a3af5ad22a193a48ad6419bcdee5dfc",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/eos.png": "7998c77c262325d453b2fef99f506083",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/hkd.png": "9df432d4057ffc2c2fa8ef8d984d78f6",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/ltc.png": "f89a8dcb2946a106630e6040ff861dba",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/eth.png": "3c4ad8ded2975c13fc2fbdf22d891c84",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/pkr.png": "f6a9c49dba10a01eb2d3dd85027772ca",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/krw.png": "2cfc41c8ceac3e2ff05e10b10976c491",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/nzd.png": "c4a200a1b501e4d6f4dc9fd8281d6de3",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/kwd.png": "5586127883f63c4eb0404cf93fb10bd8",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/inr.png": "8dc697b7c9e9af4769d1cce2a09eecc4",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/aed.png": "5586127883f63c4eb0404cf93fb10bd8",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/gbp.png": "9a369b3d4643b521bd0ec8d29d9d4fcf",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/clp.png": "63d875653b79121d6af56ee083807814",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/rub.png": "1dafe64b1ea2bb59b1ae413f067e1efd",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/dkk.png": "fba9b1885fe5794c09c0b68bdfe2f173",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/ars.png": "7d4c09d2186bf8a604507e67758cb999",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/usd.png": "34faf6b259da4349a83f4021787f9bb3",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/aud.png": "964170d1e75480ff5fa4d0642444f805",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/uah.png": "d60f016822055f3dc8079a429ff54bb1",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/bhd.png": "2518be38b2b21613e9cfe6b1055dd543",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/btc.png": "2518be38b2b21613e9cfe6b1055dd543",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/bnb.png": "e8a653b2e7467374e4f1c4434a41dbfd",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/zar.png": "0263234412879b58f2fa20b4095c0f8c",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/jpy.png": "acd60bd0e18d14c6aa22c73a9cd425ca",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/xrp.png": "fd164ac9a9d5d9491e5154eacd7696ce",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/brl.png": "ca2f4dfefbf07504f22b1880f6126d25",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/lkr.png": "9b6d6ef170f9947069c9432892d28c22",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/vnd.png": "23f74311d81fcd4b63cede6e91920584",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/eur.png": "d844ca0ff12d5c812140895629459a7d",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/pln.png": "2dc1e66c31c46fe78624a86b70da4fd5",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/try.png": "d9bbd7ff697a5930f1b9f1ac464bde5e",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/php.png": "f1a57e25220c8c93b9979a6d52e2287a",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/chf.png": "33354f9bae2cc4b9be56f4afb189ffe3",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/twd.png": "3cf900cbc0172bde4e49dc152a284af0",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/sek.png": "013767358bfde1aff42abb58a16a52d5",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/xlm.png": "28abd314425c8d859b80f1334a91971a",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/nok.png": "abee7967424c87893c4242a42b801717",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/bch.png": "4d977f8c7efebbc04fd5b54d0c052112",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/myr.png": "709b9f10cf7106ff801ec93c2ab05885",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/bmd.png": "351c4ae9fea811f9335d84d9185fbbe3",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/cad.png": "e66aa5cd4462de09a63145233ffccd7c",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/bdt.png": "81848a6aa9df61f29c9707e52e779947",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/vef.png": "df87600c6e3462a6b6faa77f3444587c",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/tbh.png": "37d16bbbc2274c7e336c862b12a807f5",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/sgd.png": "4de820a01ce0e24f877c338c1116d419",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/mxn.png": "677da5ff619de065faad394bba176022",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/czk.png": "73f92a99d1772e38583ea635f540bd28",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/mxc.png": "9a2b349eddd6dd70e478c4e281a7a22f",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/sar.png": "6607786c424f623ffbdc96b8d728b6e2",
"assets/packages/mxc_ui/assets/images/calculator/currencies/3.0x/mmk.png": "e4692a38df48a979e1e5cb6bf4760f0d",
"assets/packages/mxc_ui/assets/images/calculator/currencies/sgd.png": "a7e1d536f98ef7c4f351eaec2b716454",
"assets/packages/mxc_ui/assets/images/calculator/currencies/mxn.png": "0c450904dbf57c5f0a0a5c5bf0e4233c",
"assets/packages/mxc_ui/assets/images/calculator/currencies/ils.png": "89976eec82f9ae502a74e26e2aafb99a",
"assets/packages/mxc_ui/assets/images/calculator/currencies/czk.png": "8cc2ada2c8eeed35099cc5c4c9a0e1b6",
"assets/packages/mxc_ui/assets/images/calculator/currencies/mxc.png": "304331fcf6d67ed9651b974f0eec21c3",
"assets/packages/mxc_ui/assets/images/calculator/currencies/sar.png": "a94d5c57332640dc682db078748a1ffa",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/cny.png": "eab605578d927c268df1d7ef1f73bc72",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/eos.png": "28e81aaddf16772a47be3044d031de82",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/hkd.png": "0dee6d6756be9e745cef71c1e58e0dd4",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/ltc.png": "d3ae8e72045be11d348baf158fef0b31",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/eth.png": "32ae6a1907d6481cc3e40928fdc3e2f0",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/pkr.png": "58ad7f31be5f81337247c8e41451e401",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/krw.png": "4641c1c6efa706ad52c578ec1429398c",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/nzd.png": "16410165d84c15a5b7d58126a23459ce",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/kwd.png": "1d3b5048c13060adfc6440ccba880d4e",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/inr.png": "0b53cf153df0053df37f4a86db75b6ee",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/aed.png": "1d3b5048c13060adfc6440ccba880d4e",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/gbp.png": "94f39279c4526eb7b681961e64d71a20",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/clp.png": "54b547f14b2142764ab95447b8fbdcc6",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/rub.png": "150a204994bad05f9bbedcda99abcf36",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/dkk.png": "b61bec9a3fbdac98aa35919a40f23bbb",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/ars.png": "94a2cf327f1de37545ca0dd39becf9a4",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/usd.png": "7334b5853ad777fc7b095d8f84bfbd77",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/aud.png": "13f7ed2184c828815676dcded6e206ba",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/uah.png": "3888574664be99c2df4eda555ad3e55c",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/bhd.png": "432b54ee56126d71d7fd9c083fbc0899",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/btc.png": "432b54ee56126d71d7fd9c083fbc0899",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/bnb.png": "bd048123152e82dcf38344f2bdaf6101",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/zar.png": "30491606c41d49e1ab077e9a0a4bb90e",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/jpy.png": "dc48a1fa7ed072883e8a133d17915b7d",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/xrp.png": "dfdf3aa5b2b5de4a7edebaaec1f9ef87",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/brl.png": "29825db70b35143b0363d4a6670ba3fe",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/lkr.png": "d1d5ba372a72780b75944d09d80add75",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/vnd.png": "4c04397e1f6f3dc33cd2a481e44f08b1",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/eur.png": "de710c9c9e5f2bc6414417da920c8951",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/pln.png": "d838350e2d04cbb921d6d7fca0c5794d",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/try.png": "8ea72ef702c2217e5c536da5504ed6f1",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/php.png": "8c3f5b89677707db4ff763a61d9ae2d4",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/chf.png": "29a9fe59bada297d33b58ef0034136ab",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/twd.png": "39507a9a697521dec1fecf0c34ffb83b",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/sek.png": "155e8f86cf69d2b30d36c53b021f727b",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/xlm.png": "fd3aa7a95fc50b4383851c03ff53d684",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/nok.png": "0af64a8819c03f62401cb0657e1832fe",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/bch.png": "03f00470e79f5e2e311713baaa946729",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/myr.png": "2109e24ef013c9b489e95447b0164b08",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/bmd.png": "c81c9c15bf59fe519bdb353f5f9c51ce",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/cad.png": "6d1e28e64959bedaf7e09ce1b63f0ad9",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/bdt.png": "2fdac018761d04cde7f4481f6a082f56",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/vef.png": "b9fb768c47c61ba23b1b95f21a16dfa4",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/tbh.png": "9f6a63cd4fac51bba7ecd9b713479156",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/sgd.png": "ca382771e5cb33b9d4598f1c6f97b22b",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/mxn.png": "750661d42e44aa6fc4b1e8e115e080a9",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/czk.png": "58a25308f85e60cfd27077ff4df3888c",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/mxc.png": "9a2b349eddd6dd70e478c4e281a7a22f",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/sar.png": "6bef8a532e989bbfca877d6e36eb62fe",
"assets/packages/mxc_ui/assets/images/calculator/currencies/2.0x/mmk.png": "80b83d5d2dd25bb823bc5c2c403700ea",
"assets/packages/mxc_ui/assets/images/calculator/currencies/mmk.png": "012c1c1b3bba2f7515f291030a22d3a2",
"assets/packages/mxc_ui/assets/images/wallet/logo-btc-dark.png": "473138cca69a5b83792dfecc8d493092",
"assets/packages/mxc_ui/assets/images/wallet/logo-btc.png": "40780c17c08797eb3f5a4f499b32173c",
"assets/packages/mxc_ui/assets/images/wallet/council.png": "c0633c2faa46020c3849eeee3969b406",
"assets/packages/mxc_ui/assets/images/wallet/calendar1-dark.png": "dcb2c3b6206e4c52e36f7554f786c04c",
"assets/packages/mxc_ui/assets/images/wallet/calendar1.png": "375418b757bfec40a2e5971c81a71ef3",
"assets/packages/mxc_ui/assets/images/wallet/calendar2.png": "82e3a5ae6db1d88872ac1b0188dc01b2",
"assets/packages/mxc_ui/assets/images/wallet/dhx_mining_diagram-dark.png": "8ca8c16df2d950a8223d94aa00d62d3c",
"assets/packages/mxc_ui/assets/images/wallet/info-mxc-vault.png": "a3d745daa53b1dd6f013ff738508b44d",
"assets/packages/mxc_ui/assets/images/wallet/calendar3.png": "0d170cb59544f64f1314277cddce2804",
"assets/packages/mxc_ui/assets/images/wallet/logo-dhx-dark.png": "9e11a3115d6b4c263fdf82244754eb3a",
"assets/packages/mxc_ui/assets/images/wallet/mining_boost_graph-dark.png": "1759792c8a85bb19636ce1ba7ee0796b",
"assets/packages/mxc_ui/assets/images/wallet/icon-mine.png": "f0b52918430926237e690d3d77bfdc8f",
"assets/packages/mxc_ui/assets/images/wallet/calendar2-dark.png": "0565b3da6a4c2afe037485658b909f2e",
"assets/packages/mxc_ui/assets/images/wallet/learn.png": "f39dc65f361bed375466dbf489eebd33",
"assets/packages/mxc_ui/assets/images/wallet/dhx_mining_diagram.png": "4fc2302aa539aae3c837dfda75cd92be",
"assets/packages/mxc_ui/assets/images/wallet/logo-dhx.png": "7106c49558b3bc122915848a5e8cd972",
"assets/packages/mxc_ui/assets/images/wallet/icon-council.png": "682db6ca58288fae34ecc19d06008904",
"assets/packages/mxc_ui/assets/images/wallet/logo-nft.png": "b93d54f89afb9954a67b5836f81a2134",
"assets/packages/mxc_ui/assets/images/wallet/calendar3-dark.png": "4c22a196e1863559f62268100f922e6d",
"assets/packages/mxc_ui/assets/images/wallet/info-current-transaction-fee.png": "77a2fe4197fd33a4475bd59977017ad0",
"assets/packages/mxc_ui/assets/images/wallet/logo-mxc-dark.png": "5c01cbec79910f036ad17f9a580e58c4",
"assets/packages/mxc_ui/assets/images/wallet/rocket.png": "dce1643692d0476d86458b5382731122",
"assets/packages/mxc_ui/assets/images/wallet/mining_boost_graph.png": "21aeef81a4cac9058aeb93cf3275c486",
"assets/packages/mxc_ui/assets/images/wallet/unbond.png": "b31fe48a78846c0035b7ada82ec8b337",
"assets/packages/mxc_ui/assets/images/wallet/bond.png": "e2fbce268a56149a9e143dee03c8ac09",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/logo-btc-dark.png": "a95be838e9dc2868832b6ee4e81d5756",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/logo-btc.png": "189c63d152a5058085f853deb7b13721",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/council.png": "5998cecb8ea3b657bb9234ba9c260fb1",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/calendar1-dark.png": "b210ab835f8a0a547fe867023b72a46a",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/calendar1.png": "5c3daaed608a255e41090ede9764b76b",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/calendar2.png": "cd7264ae8f36a5e46a27369d4a436046",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/dhx_mining_diagram-dark.png": "4c4369ee4feb9a0ca9bfd592fe88a58d",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/info-mxc-vault.png": "23a017065edd1d0ed5801b56c5dc5122",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/calendar3.png": "5c8ceeed681abd05b75e83053bc7eb8b",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/logo-dhx-dark.png": "204ba14dd9d75e89dc2f25fb62f210a1",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/mining_boost_graph-dark.png": "377a36ecc188a276168408f5f5e29622",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/icon-mine.png": "aaca211c50426e4b622b8e3f3f085863",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/calendar2-dark.png": "ae716e59993bc78a4bc56684d7a36e0f",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/learn.png": "20345e8a9e2918098246f3d73ee5bb51",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/dhx_mining_diagram.png": "eb4ff2a37d366be6dbc2ac28597982cf",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/logo-dhx.png": "14251ddb633c3a34ea9aea28c894f14e",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/icon-council.png": "b40e7976b40592b1d1bfc59e585221d4",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/calendar3-dark.png": "aabff88cd6082632c67f63b6978bbf98",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/info-current-transaction-fee.png": "0534ec6efd3fa35edd3a7d0cab801614",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/logo-mxc-dark.png": "61a09d58a90050ffd4636238f7f60b07",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/rocket.png": "727024fee820945837da9b852f3ce2e9",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/mining_boost_graph.png": "c4593239685e6bc9837be3bf9a1908a8",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/unbond.png": "889c270ef9766da1843a8f54b4472d00",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/bond.png": "2a6440b9574f85f30f9e4f5140d5ec3e",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/mxc_bubble.png": "42e1aec2f3de7dd632b4de52a8676d18",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/miner_bubble.png": "800492da2c82b44878af4fc47f2037c9",
"assets/packages/mxc_ui/assets/images/wallet/3.0x/logo-mxc.png": "09be95cb10aca8131b2c16fe5b59fc25",
"assets/packages/mxc_ui/assets/images/wallet/mxc_bubble.png": "6af8e58401ea7d5923f1448ba339e42d",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/logo-btc-dark.png": "7f07a702415f55530535cd2b002beb0c",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/logo-btc.png": "8a5aeedc39e001039711d9136d97eb3d",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/council.png": "30802769395be0c0ab8a2d1261196588",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/calendar1-dark.png": "d6c7c17051e8f631062f1b70a27a2818",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/calendar1.png": "4010296c6e3d4b8b35a45d2ebd1d7c53",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/calendar2.png": "4024827a637d87d85443e60c9609d49d",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/dhx_mining_diagram-dark.png": "a52ef9fd787fdf75465811884c1fe86f",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/info-mxc-vault.png": "90e3bdc79ae19412cc9f137be82c80e6",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/calendar3.png": "29a1d2a18a73ff64d530bd21b9800fc7",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/logo-dhx-dark.png": "d6939410f4d837edf2eb6bcaac8ae4bd",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/mining_boost_graph-dark.png": "cbdb18d4190664fc52028290f0fedbe9",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/icon-mine.png": "727037c8fba27624788ea8ab8d5d4aec",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/calendar2-dark.png": "8dd0ab6ed92be63974f67298f2ccaa2a",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/learn.png": "a7e94f7f0e7f69c432b3bc7beb7f2ab6",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/dhx_mining_diagram.png": "9e04dd5b70ac6fc7e1922a4c3ccfa704",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/logo-dhx.png": "2ec38329efaacb913e8d66de31e71e21",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/icon-council.png": "049043c542f54af65ea8084fbccc6e43",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/calendar3-dark.png": "48588aa26ae690fec87d61798e629c4b",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/info-current-transaction-fee.png": "12b20685b82ad15334ee53c41b8ab122",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/logo-mxc-dark.png": "60f6a0e75385063ab53a398da7f36501",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/rocket.png": "a4d794266c1724f5df82591218365a08",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/mining_boost_graph.png": "bd023a02ba347be7ba603a7a870e42a9",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/unbond.png": "e6bbaf399ebd1044830b3c92acaf130a",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/bond.png": "32a00faa99de08429526f7828c34dd5d",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/mxc_bubble.png": "e4b4fcdf5516fd61a8907b7cb10e5b83",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/miner_bubble.png": "8cde39ef60f2adbf8dea7dea62374489",
"assets/packages/mxc_ui/assets/images/wallet/2.0x/logo-mxc.png": "90c6290aa866abc68aa740a4776ec8d5",
"assets/packages/mxc_ui/assets/images/wallet/miner_bubble.png": "52c50db0a9c337c0b514abb6c558457f",
"assets/packages/mxc_ui/assets/images/wallet/logo-mxc.png": "5692fc642e968cc2df9a06aac5801f6d",
"assets/packages/mxc_ui/assets/images/home/devices.png": "ddaee67c19e9d570ba34eb6a0fc13b64",
"assets/packages/mxc_ui/assets/images/home/wallet.png": "0eb4e46d3ab23b49b91aaed8c92332df",
"assets/packages/mxc_ui/assets/images/home/3.0x/devices.png": "8c26a2bf802f4ce4a850b9060826b8b9",
"assets/packages/mxc_ui/assets/images/home/3.0x/wallet.png": "bceb75c1ef73d6443388a5b83f16d22c",
"assets/packages/mxc_ui/assets/images/home/3.0x/bluecircle.png": "aee5eba676da779d11dc37ad012f8fc5",
"assets/packages/mxc_ui/assets/images/home/3.0x/home.png": "0af828a129cd3a434dbf104b0b2f0f7d",
"assets/packages/mxc_ui/assets/images/home/3.0x/gateways.png": "1f93a6ee37ae3bc0eb9da06d57bfddef",
"assets/packages/mxc_ui/assets/images/home/bluecircle.png": "d04531377747dec9ebb8d4547816bd32",
"assets/packages/mxc_ui/assets/images/home/profile.png": "91429ebbc52ebbabdb06fa5e87493ca1",
"assets/packages/mxc_ui/assets/images/home/home.png": "053b020a6706638dd1cb3e104fe3547f",
"assets/packages/mxc_ui/assets/images/home/2.0x/devices.png": "705efeaece48e600ea2f1c2859df6a0b",
"assets/packages/mxc_ui/assets/images/home/2.0x/wallet.png": "47426c16386d4f8377fa562f38d66b16",
"assets/packages/mxc_ui/assets/images/home/2.0x/bluecircle.png": "f873cdaa46e82ca4834d373f2d4351f9",
"assets/packages/mxc_ui/assets/images/home/2.0x/home.png": "b1dbc9fd5cfcc7c2fa029dc0d58e9fc5",
"assets/packages/mxc_ui/assets/images/home/2.0x/gateways.png": "8b69e4a23ef9ad22e920f7e40babcb24",
"assets/packages/mxc_ui/assets/images/home/gateways.png": "36a546823ccf310c7221f5364f2d7d0f",
"assets/packages/mxc_ui/assets/images/deposit/qrcode.png": "81199afe26d00cddc00864c99af37186",
"assets/packages/mxc_ui/assets/images/deposit/3.0x/qrcode.png": "e414b68b47872b14a0bdf0f69ba4cd78",
"assets/packages/mxc_ui/assets/images/deposit/2.0x/qrcode.png": "af8b11cc5216e44fe47bd6a523d6ead0",
"assets/packages/mxc_ui/assets/images/app/no-data.png": "01444483f45fdcb2d29cbbf4d04004e9",
"assets/packages/mxc_ui/assets/images/app/done.png": "7b0bc08f11e4b729d8239bb2017738cf",
"assets/packages/mxc_ui/assets/images/app/logo-circle.png": "0c797aeb26ea9b5b24c827ae34688d2a",
"assets/packages/mxc_ui/assets/images/app/ic-question-circle.png": "835c01853f0dee1f457e205ddf1d1756",
"assets/packages/mxc_ui/assets/images/app/close.png": "608d3df8246eabbe95dd33161ccde298",
"assets/packages/mxc_ui/assets/images/app/3.0x/no-data.png": "c62b9dd344009a7e1822d15c22fb7812",
"assets/packages/mxc_ui/assets/images/app/3.0x/done.png": "5ad2fcb5406ec31d869ddbf70f0fd317",
"assets/packages/mxc_ui/assets/images/app/3.0x/logo-circle.png": "6c1208ecab7c13f6ab597500a7e6b498",
"assets/packages/mxc_ui/assets/images/app/3.0x/ic-question-circle.png": "83e9c917317f218ea56620ece2fa52df",
"assets/packages/mxc_ui/assets/images/app/3.0x/close.png": "6bf2a9beddc78928e0bdf7a508d0946c",
"assets/packages/mxc_ui/assets/images/app/2.0x/no-data.png": "01444483f45fdcb2d29cbbf4d04004e9",
"assets/packages/mxc_ui/assets/images/app/2.0x/done.png": "6413c30f9115c4249d31f07fbc526308",
"assets/packages/mxc_ui/assets/images/app/2.0x/logo-circle.png": "d871882c2fd73b06cfc91db7beaafb5c",
"assets/packages/mxc_ui/assets/images/app/2.0x/ic-question-circle.png": "4e85d063a66105e1c336ce81bc0deb5b",
"assets/packages/mxc_ui/assets/images/app/2.0x/close.png": "981cfd4457bd4371b744fd645d04687f",
"assets/packages/mxc_ui/assets/images/maintenance/robot.png": "f608fae999564f8671dc386dade4a88f",
"assets/packages/mxc_ui/assets/images/maintenance/3.0x/robot.png": "66f9b5e324706804fad6fbbf9cfe2785",
"assets/packages/mxc_ui/assets/images/maintenance/2.0x/robot.png": "42bca65086eb4d47012b7ec7113eb570",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "ffed6899ceb84c60a1efa51c809a57e4",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "3241d1d9c15448a4da96df05f3292ffe",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "eaed33dc9678381a55cb5c13edaf241d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
