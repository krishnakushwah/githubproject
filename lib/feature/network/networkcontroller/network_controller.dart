import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController{


 late StreamSubscription<ConnectivityResult>_connectivitySubscription;
  var connectionStatus =0.obs;
  final Connectivity _connectivity= Connectivity();


@override
 void onInit(){
 super.onInit();
 initConnectivity();
 _connectivitySubscription=_connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
 }
  Future<void> initConnectivity()async{
 ConnectivityResult result;
 //var ConnectivityResult;
 try{
result= await _connectivity.checkConnectivity();
 }
 on PlatformException catch(e){
print(e.toString());
 }
 return _updateConnectionStatus(result!);
 //_updateConnectionStatus(result)
  }
  _updateConnectionStatus(ConnectivityResult result){
 switch(result){
  case ConnectivityResult.wifi:
    connectionStatus.value=1;
    break;
  case ConnectivityResult.mobile:
   connectionStatus.value=2;
   break;
  case ConnectivityResult.none:
   connectionStatus.value=0;
   break;
  default:
   Get.snackbar("Network failed","Failed to get network connection");
   break;
 }
  }

@override
void onclose(){
 _connectivitySubscription.cancel();
}
}