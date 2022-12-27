import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/model/signup_data_fetchresponse.dart';
import 'package:krishnakushwahtest2/core/repository/Bottambar/bottambar_repo.dart';
import 'package:krishnakushwahtest2/core/repository/Bottambar/bottambar_repo_imple.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BottamMydetailsController extends GetxController {
  late TextEditingController UpdateNamecontroller = new TextEditingController();
  late TextEditingController UpdateEmailController =
      new TextEditingController();
  late TextEditingController UpdatePasswordController =
      new TextEditingController();
  late TextEditingController UpdateNumberController =
      new TextEditingController();
  late TextEditingController UpdateidController = new TextEditingController();

  late BottambarRepo _BottambarRepo;

  BottamMydetailsController() {
    _BottambarRepo = Get.find<Bottambarimple>();
  }

  List<Bottamfetch> internDataList = <Bottamfetch>[];
  var phone = '9074094167';
  RxString name = "".obs;
  RxString emailId = "".obs;
  RxString phoneno = "".obs;
  RxString password = "".obs;

  RxBool loader = false.obs;

  fetchDataInterns() async {
    loader.value = false;
    final fetchResponse = await _BottambarRepo.fetchDetailDataAPI(phone);
    if (fetchResponse != null) {
      loader.value = true;
      internDataList = fetchResponse;
      print("data detail bottam is fetch now....");
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

  saveAPI() async {
    var response = await _BottambarRepo.UpdateDetailAPI(
        UpdateNamecontroller.text,
        UpdateEmailController.text,
        UpdatePasswordController.text,
        UpdateNumberController.text,
        UpdateidController.text);
    if (response != null) {
      // Get.back();
      // Future.delayed(const Duration(seconds: 1));
      Get.defaultDialog(
              title: "update", content: Text(("Data Updated successfully")))
          .then((value) {
        fetchDataInterns();
      });
    }
    //  var response = await _BottambarRepo.UpdateDetailAPI(loginnameup.string,emailup.string,passwordup.string,phoneup.value,idup.string);
  }

  @override
  void onInit() {
    // called immediately after the widget is allocated memory
    // Your code goes here
    //fetchdataIntern();
    fetchDataInterns();
    //fetchdataIntern();
    super.onInit();
  }

  DeleteData(String id) async {
    final response = await _BottambarRepo.DeleteAPI(id);
    print(response.response);
    if (response != null) {
      if (response.response == 1) {
        Get.defaultDialog(
            title: "Deleted",
            content: Center(
              child: Text("Data Deleted successfully"),
            )).then((value) {
          fetchDataInterns();
        });
      }
    }
    // print(response![0].response);
  }

  // RxString idup = ''.obs;
  // RxString loginnameup = ''.obs;
  // RxString emailup = ''.obs;
  // RxString passwordup = ''.obs;
  // RxString phoneup = ''.obs;
  //
  // fetchdataIntern() async {
  //   final response = await SharedPreferences.getInstance();
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //
  //   idup.value = prefs.getString("id")!;
  //   loginnameup.value = prefs.getString("name")!;
  //   emailup.value = prefs.getString("email")!;
  //   passwordup.value = prefs.getString("password")!;
  //   phoneup.value = prefs.getString("phone")!;
  //
  //   print("getstring mydetails");
  //   print(idup.value);
  //   print(loginnameup.value);
  //   print(emailup.value);
  //   print(passwordup.value);
  //   print(phoneup.value);
  //   //id.value=prefs.getString("name")!;
  // }

  UpdateData(String id) async {
    final fetchResponse = await _BottambarRepo.UpdateDataAPI(id);
    print("udpadte data is fetch");
    print(fetchResponse![0].id);
    if (fetchResponse == null) {
      print("Line Number 75");
    } else {
      print("Line Number 75");
      UpdateidController.text = fetchResponse[0].id!;
      UpdateNamecontroller.text = fetchResponse[0].name!;
      UpdateEmailController.text = fetchResponse[0].emailId!;
      UpdateNumberController.text = fetchResponse[0].phone!;
      UpdatePasswordController.text = fetchResponse[0].password!;

      Future.delayed(const Duration(seconds: 1));
      Get.defaultDialog(
          content: Container(
        child: Column(
          children: [
            Form(
                child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent)),
                  border: const OutlineInputBorder(),
                  hintText: "Company Name",
                  hintStyle: TextStyle(
                    color: const Color(0xff9F9F9F),
                    fontSize: 14,
                  ),
                ),
                controller: UpdateNamecontroller,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent)),
                  border: const OutlineInputBorder(),
                  hintText: "User Name",
                  hintStyle: TextStyle(
                    color: const Color(0xff9F9F9F),
                    fontSize: 14,
                  ),
                ),
                controller: UpdateEmailController,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent)),
                  border: const OutlineInputBorder(),
                  hintText: "email Id",
                  hintStyle: TextStyle(
                    color: const Color(0xff9F9F9F),
                    fontSize: 14,
                  ),
                ),
                controller: UpdateNumberController,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent)),
                  border: const OutlineInputBorder(),
                  hintText: "password",
                  hintStyle: TextStyle(
                    color: const Color(0xff9F9F9F),
                    fontSize: 14,
                  ),
                ),
                controller: UpdatePasswordController,
              ),
              ElevatedButton(
                  onPressed: () {
                    saveAPI();
                  },
                  child: Text("Save Update"))
            ]))
          ],
        ),
      ));
    }
    print("krishna 100");
    print(fetchResponse[0].id!);
    print(fetchResponse![0].name);
    print(fetchResponse[0].emailId);
    print(fetchResponse[0].phone);
    print(fetchResponse[0].password);
  }
}
