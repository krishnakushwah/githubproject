import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/repository/signup/Signup_repo.dart';
import 'package:krishnakushwahtest2/core/repository/signup/Signup_repo_imple.dart';

class SignupController extends GetxController{
  RxInt stdAge = 0.obs;
  RxString fName = ''.obs;


  late TextEditingController NameController = new TextEditingController();
  late TextEditingController EmailController = new TextEditingController();
  late TextEditingController PasswordController = new TextEditingController();
  late TextEditingController PhoneController = new TextEditingController();

  GlobalKey<FormState> signupFormKey = new GlobalKey<FormState>();




  late SignUpRepo _signUpRepo;

  SignupController(){
   _signUpRepo = Get.find<SignUpRepoImpl>();
  }


  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();

  }



  signupAPI()async{
//    Get.toNamed(RouteConstant.signupTwo);
    var isValide = signupFormKey.currentState?.validate();


    if(isValide==true){
      final response = await _signUpRepo.signupAPI(NameController.text,EmailController.text,PasswordController.text,PhoneController.text);
      print("Response print");



    }


    }








}