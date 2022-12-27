import 'package:get/get.dart';
import 'package:krishnakushwahtest2/feature/dashboard/controller/dashboard_controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DashboardController());
  }

}