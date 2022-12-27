import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/repository/Bottambar/bottambar_repo_imple.dart';
import 'package:krishnakushwahtest2/core/repository/Timeinout/timein_repo_imple.dart';
import 'package:krishnakushwahtest2/feature/Profile_pagebottam/controller/profile_pagecontroller.dart';
import 'package:krishnakushwahtest2/feature/bottambar_firstview/controller/controller_signup2.dart';
import 'package:krishnakushwahtest2/feature/home_pagebottam/controller/home_pagecontroller.dart';
import 'package:krishnakushwahtest2/feature/login/controller/logincontroller.dart';
import 'package:krishnakushwahtest2/feature/mydetails_pagebottam/controller/mydetails_pagecontroller.dart';

class SignupTwoBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SignupControllerTwo());
    Get.lazyPut(()=>TimeinRepoimple());
    Get.lazyPut(() => BottamprofileController());
    Get.lazyPut(() => BottamMydetailsController());
    Get.lazyPut(() => BottamhomeController());
    Get.lazyPut(() => Bottambarimple());

    Get.lazyPut(() => Logincontroller());


  }
}