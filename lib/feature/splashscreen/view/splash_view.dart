
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:krishnakushwahtest2/feature/splashscreen/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashController(),
        builder: (dynamic _) => Scaffold(
          body: Center(
            child: Image.asset('assets/login.jpeg'),
          ),
        )
    );
  }
}