import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/repository/login/login_repo_imple.dart';
import 'package:krishnakushwahtest2/feature/login/controller/logincontroller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
     Get.lazyPut(()=>LoginRepoimple());
    Get.put(Logincontroller());
  }

}