import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/repository/Bottambar/bottambar_repo.dart';


class SignupControllerTwo extends GetxController{
  var currentIndex=0.obs;
 //
 // late BottambarRepo _bottambarRepo;

 void changeIndex( var _index){
    print(_index);
    currentIndex.value= _index;

}

}