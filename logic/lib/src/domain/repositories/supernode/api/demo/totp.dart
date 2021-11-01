import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';

class DemoTotpRepository implements TotpRepository {
  DemoTotpRepository();

  Future<bool> getTotpStatus() async {
    return true;
  }

  Future<TotpConfiguration> getTotpConfig({required int qrCodeSize}) async {
    return TotpConfiguration(
      qrCode: "X0000000000000000",
      recoveryCodes: ["123", "456", "789"],
      secret: "111111",
      url: "http://www.mxc.org",
    );
  }

  Future<void> enableTotp(String otp) => throw UnimplementedError();

  Future<void> disableTotp(String otp) => throw UnimplementedError();

  @override
  ChopperClient get client => throw UnimplementedError();
}
