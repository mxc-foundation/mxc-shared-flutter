import 'package:mxc_logic/mxc_logic.dart';

class DeviceUseCase {
  final SupernodeRepository supernodeRepository;

  DeviceUseCase(this.supernodeRepository);

  Future<ListWithTotal<Device>> listDevices({String? search}) {
    return supernodeRepository.device.list(limit: 10, search: search);
  }
}
