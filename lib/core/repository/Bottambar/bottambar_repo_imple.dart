import 'dart:convert';
import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/model/signup_data_fetchresponse.dart';
import 'package:krishnakushwahtest2/core/model/signup_response.dart';
import 'package:krishnakushwahtest2/core/model/update_response.dart';
import 'package:krishnakushwahtest2/core/repository/Bottambar/bottambar_repo.dart';
import 'package:krishnakushwahtest2/httpServices/http_service_impl.dart';
import 'package:krishnakushwahtest2/httpServices/http_services.dart';

class Bottambarimple implements BottambarRepo{
  late HttpService _httpService;
  Bottambarimple() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }


  @override
  Future<List<Bottamfetch>?>fetchDataAPI(String phone)async {
    // TODO: implement FetchDataAPI
    try {
      final response = await _httpService.fetchDataAPIRequest(phone);
      if (response.statusCode == 200) {
        return BottamfetchFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;
  }
  List<Bottamfetch> BottamfetchFromJson(String str) => List<Bottamfetch>.from(json.decode(str).map((x) => Bottamfetch.fromJson(x)));

  @override
  Future<List<Bottamfetch>?>fetchDetailDataAPI(String phone)async {
    // TODO: implement FetchDetailDataAPI
    try {
      final response = await _httpService.fetchDataDetailAPIRequest(phone);
      if (response.statusCode == 200) {
        return BottamfetchFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;

  }

  @override
  Future<List<Bottamfetch>?> fetchHomeDataAPI(String phone) async{
    // TODO: implement fetchHomeDataAPI
    try {
      final response = await _httpService.fetchDataHomeAPIRequest(phone);
      if (response.statusCode == 200) {
        return BottamfetchFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;

  }



 @override
  Future<SIgnupResponse> DeleteAPI(String id) async{
    // TODO: implement DeleteAPI
    final response = await _httpService.DeleteAPIRequest(id);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return SIgnupResponse.fromJson(ResponseMap);
  }

  @override
Future<List<Bottamfetch>?>UpdateDataAPI(String id) async {

    // final response = await _httpService.UpdateDataAPIRequest(id);
    // Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    // return Bottamfetch().fromJson(ResponseMap);
    try {
    final response = await _httpService.UpdateDataAPIRequest(id);
    if (response.statusCode == 200) {
      return BottamfetchFromJson(response.toString());
    }
  } on Exception catch (e) {
    print(e);
    return null;
  }
  return null;
    }

  @override
  Future<List<UpdateResponse>?> UpdateDetailAPI(String name,String email,String password,String phone,String id) async{
    // TODO: implement UpdateDetailAPI

    try{
      final response = await _httpService.UpdateDetailAPIRequest(name,email,password,phone,id);
   //  Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));

      if (response.statusCode == 200) {
       // return UpdateResponseFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;
  }
  }

