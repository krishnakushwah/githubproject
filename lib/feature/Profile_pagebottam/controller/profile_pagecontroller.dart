import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/model/signup_data_fetchresponse.dart';
import 'package:krishnakushwahtest2/core/repository/Bottambar/bottambar_repo.dart';
import 'package:krishnakushwahtest2/core/repository/Bottambar/bottambar_repo_imple.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BottamprofileController extends GetxController{
  List<Bottamfetch>internDataList = <Bottamfetch>[];
late BottambarRepo _BottambarRepo;


  BottamprofileController(){
    _BottambarRepo = Get.find<Bottambarimple>();
  }
var phone ='9074094167';

  RxString id = " ".obs;
  RxString name = " ".obs;
  RxString emailId = " ".obs;
  RxString phoneno = " ".obs;
  RxString password= " ".obs;

  fetchdataInterns()async{
    final response= await SharedPreferences.getInstance();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    id.value=prefs.getString("id")!;
    name.value=prefs.getString("name")!;
    emailId.value=prefs.getString("emailId")!;
    phoneno.value=prefs.getString("phone")!;
    password.value=prefs.getString("password")!;

    print("profile page is working");
    print(name.value);
    print(emailId.value);
    print(phoneno.value);
    print(password.value);
    //id.value=prefs.getString("name")!;


  }


  RxBool loader = false.obs;
  fetchDataInterns() async {
    loader.value = false;
    final fetchResponse = await _BottambarRepo.fetchDataAPI(phone);
    if (fetchResponse != null) {
      loader.value = true;
      internDataList = fetchResponse;
      print("data is fetch now....");
      print(fetchResponse[0].id);
      print(fetchResponse[0].name);
      print(fetchResponse[0].emailId);
      print(fetchResponse[0].phone);
      print(fetchResponse[0].password);

      loader.value = false;
      print(loader.value);

      name.value = fetchResponse[0].name!;
      emailId.value = fetchResponse[0].emailId!;
      phoneno.value = fetchResponse[0].phone!;
      password.value = fetchResponse[0].password!;


    }
    print("Line Number 33");
  }
  @override
  void onInit(){
    fetchdataInterns();
    fetchDataInterns();
    super.onInit();

  }




}



