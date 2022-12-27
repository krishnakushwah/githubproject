import 'dart:convert';
import 'package:get/get.dart';

import 'package:krishnakushwahtest2/core/model/signup_response.dart';
import 'package:krishnakushwahtest2/core/repository/signup/Signup_repo.dart';
import 'package:krishnakushwahtest2/httpServices/http_service_impl.dart';
import 'package:krishnakushwahtest2/httpServices/http_services.dart';

class SignUpRepoImpl implements SignUpRepo {
  late HttpService _httpService;

  SignUpRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }



  @override
  Future<SIgnupResponse>signupAPI(String Name,String Email,String Password,String Phone) async {
    // TODO: implement loginAPI
    final response = await _httpService.signupAPIRequest(Name,Email,Password,Phone);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return SIgnupResponse.fromJson(ResponseMap);

  }

}
