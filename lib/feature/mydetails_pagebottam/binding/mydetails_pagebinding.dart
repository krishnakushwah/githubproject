import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/repository/Bottambar/bottambar_repo_imple.dart';
import 'package:krishnakushwahtest2/feature/mydetails_pagebottam/controller/mydetails_pagecontroller.dart';

class BottamMydetailsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=>Bottambarimple());
    Get.put(BottamMydetailsController());
  }

}