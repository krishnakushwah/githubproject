import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/repository/signup/Signup_repo_imple.dart';
import 'package:krishnakushwahtest2/feature/bottambar_firstview/controller/controller_signup2.dart';
import 'package:krishnakushwahtest2/feature/signup/controller/signup_controller.dart';


class SignupBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=>SignUpRepoImpl());
    Get.lazyPut(() => SignupControllerTwo());
    Get.put(SignupController());
  }

}