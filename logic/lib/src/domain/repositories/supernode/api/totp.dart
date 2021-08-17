import 'package:chopper/chopper.dart';
import 'package:mxc_logic/mxc_logic.dart';
import 'package:mxc_logic/src/data/data.dart';

class TotpRepository {
  final ChopperClient client;

  TotpRepository(this.client);

  Future<bool> getTotpStatus() async {
    final res = await client.internalService.getTOTPStatus();
    return res.body!.enabled!;
  }

  Future<TotpConfiguration> getTotpConfig({required int qrCodeSize}) async {
    final res = await client.internalService.getTOTPConfiguration(
      body: ExtapiGetTOTPConfigurationRequest(
        qrCodeSize: qrCodeSize.toString(),
      ),
    );
    return TotpConfiguration(
      qrCode: res.body!.qrCode!,
      recoveryCodes: res.body!.recoveryCode!,
      secret: res.body!.secret!,
      url: res.body!.url!,
    );
  }

  Future<void> enableTotp(String otp) async {
    await client.internalService.enableTOTP(
      body: ExtapiTOTPStatusRequest(),
      grpcMetadataXOTP: otp,
    );
  }

  Future<void> disableTotp(String otp) async {
    await client.internalService.disableTOTP(
      body: ExtapiTOTPStatusRequest(),
      grpcMetadataXOTP: otp,
    );
  }
}