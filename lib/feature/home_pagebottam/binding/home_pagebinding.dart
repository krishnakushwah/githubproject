import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/repository/Bottambar/bottambar_repo_imple.dart';
import 'package:krishnakushwahtest2/core/repository/Timeinout/timein_repo_imple.dart';
import 'package:krishnakushwahtest2/feature/home_pagebottam/controller/home_pagecontroller.dart';

class Bottamhomebinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies\
    Get.lazyPut(()=>TimeinRepoimple());
    Get.lazyPut(()=>Bottambarimple());
    Get.put(BottamhomeController());
  }

}