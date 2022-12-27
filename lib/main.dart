import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/constant/get_pages.dart';
import 'package:krishnakushwahtest2/core/constant/route_constant.dart';
import 'package:krishnakushwahtest2/feature/network/networkbinding/network_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      initialRoute: RouteConstant.splash,
      getPages: getPages,
      initialBinding: NetworkBinding(),
    );
  }
}
