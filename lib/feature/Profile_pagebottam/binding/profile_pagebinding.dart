import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/repository/Bottambar/bottambar_repo_imple.dart';
import 'package:krishnakushwahtest2/feature/Profile_pagebottam/controller/profile_pagecontroller.dart';
import 'package:krishnakushwahtest2/feature/home_pagebottam/controller/home_pagecontroller.dart';

class BottamProfileBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>Bottambarimple());
    Get.put(BottamprofileController());

  }
}