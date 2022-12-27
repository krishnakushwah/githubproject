import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:krishnakushwahtest2/core/model/timein_response.dart';
import 'package:krishnakushwahtest2/core/repository/Timeinout/timin_repo.dart';
import 'package:krishnakushwahtest2/httpServices/http_service_impl.dart';
import 'package:krishnakushwahtest2/httpServices/http_services.dart';

class TimeinRepoimple implements TimeinRepo{
  late HttpService _httpService;
  TimeinRepoimple() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }
  @override
  Future<Timeinresponse>TimeinAPI(String id,String date,String time,String address) async{
    // TODO: implement TimeinAPI
    final response = await _httpService.TimeinAPIRequest(id,date,time,address);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return Timeinresponse.fromJson(ResponseMap);
  }

  @override
  Future<Timeinresponse> TimeoutAPI(String id, String date, String time, String address) async {
    // TODO: implement TimeoutAPI
    final response = await _httpService.TimeoutAPIRequest(id,date,time,address);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return Timeinresponse.fromJson(ResponseMap);

  }


}