import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/constant/route_constant.dart';
import 'package:krishnakushwahtest2/core/repository/login/login_repo.dart';
import 'package:krishnakushwahtest2/core/repository/login/login_repo_imple.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Logincontroller extends GetxController{

  late TextEditingController userNameController = new TextEditingController();
  late TextEditingController userPasswordController = new TextEditingController();
  GlobalKey<FormState> loginFormKey = new GlobalKey<FormState>();

   late LoginRepo _loginRepo;

  Logincontroller(){
    _loginRepo = Get.find<LoginRepoimple>();
  }


  loginAPI()async{
    var isValide = loginFormKey.currentState?.validate();

    if(isValide==true){
      final response = await _loginRepo.loginAPI(userNameController.text,userPasswordController.text);
      print("Response print");
      print(response![0].response);
      if(response[0].response==1){
        SharedPreferences prefs = await SharedPreferences.getInstance();

        prefs.setInt("response", response[0].response!);
        prefs.setString("id", response[0].id!);
        prefs.setString("name", response[0].name!);
        prefs.setString("email", response[0].emailId!);
        prefs.setString("phone", response[0].phone!);
        prefs.setString("password", response[0].password!);

        print("login details");
        print(response[0].name);


        print(response[0].emailId);


        Get.toNamed(RouteConstant.signupTwo);


      }else{
        Get.snackbar("Warning","Invalid credential",snackPosition: SnackPosition.BOTTOM);
      }

      print(response[0].response);

      print("Line Number 19");

    }

    print(isValide);
  }

}