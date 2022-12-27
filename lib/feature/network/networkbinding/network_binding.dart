import 'package:get/get.dart';
import 'package:krishnakushwahtest2/feature/network/networkcontroller/network_controller.dart';

class NetworkBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut<NetworkController>(
            () => NetworkController(),
    );
  }
}
