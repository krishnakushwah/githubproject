import 'dart:async';

import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/constant/route_constant.dart';

import '../../../core/global/global.dart' as globals;

class SplashController extends GetxController{

  @override
  void onReady() {
    Timer(const Duration(seconds: 3),
            () =>
        globals.autoLogin.value==false ? Get.offAllNamed(RouteConstant.dashboard) : Get.offAllNamed(RouteConstant.dashboard)
    );
    super.onReady();
  }

}