import 'dart:convert';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:krishnakushwahtest2/core/model/login_response.dart';
import 'package:krishnakushwahtest2/core/repository/login/login_repo.dart';
import 'package:krishnakushwahtest2/httpServices/http_service_impl.dart';
import 'package:krishnakushwahtest2/httpServices/http_services.dart';

class LoginRepoimple implements LoginRepo{
  late HttpService _httpService;
  LoginRepoimple() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }
  @override
  Future<List<LoginResponse>?> loginAPI(String username,String password) async{
    // TODO: implement loginAPI
    try{
      final response = await _httpService.loginAPIRequest(username,password);
//      Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));

      if (response.statusCode == 200) {
        return loginResponseFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;
  }
  List<LoginResponse> loginResponseFromJson(String str) => List<LoginResponse>.from(json.decode(str).map((x) => LoginResponse.fromJson(x)));






}


