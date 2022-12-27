import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:krishnakushwahtest2/core/url_constant.dart';
import 'package:krishnakushwahtest2/httpServices/http_services.dart';



class HttpServiceImpl implements HttpService{
  late Dio _dio;

  @override
  void init() {
    _dio = Dio(BaseOptions(baseUrl: URLConstant.baseUrl));
  }
  @override
  Future<Response> signupAPIRequest(String Name,String Email,String Password,String Phone) async{
    // TODO: implement loginAPIRequest
    Response response;
    try{
      print(URLConstant.baseUrl+URLConstant.signup+'name=$Name&emailId=$Email&password=$Password&phone=$Phone');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.signup+'name=$Name&emailId=$Email&password=$Password&phone=$Phone');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }


  @override
  Future<Response> fetchDataAPIRequest(String phone) async {
    Response response;
    try
    {
      response = await _dio.get('${URLConstant.datafetch}number=$phone');
    } on DioError catch (e)
    {
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response>fetchDataDetailAPIRequest(String phone) async{
    // TODO: implement FetchDataDetailAPIRequest
    Response response;
    try
    {
      response = await _dio.get('${URLConstant.datafetch}number=$phone');
    } on DioError catch (e)
    {
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response>loginAPIRequest(String username,String password)async {
    // TODO: implement loginAPIRequest
    Response response;
    try
    {      print(URLConstant.baseUrl+URLConstant.logindatatest+'userName=$username&password=$password');

    //print(URLConstant.baseUrl+URLConstant.signup+'name=$Name&emailId=$Email&password=$Password&phone=$Phone');

      response = await _dio.get('${URLConstant.logindatatest}userName=$username&password=$password');
    } on DioError catch (e)
    {
      throw Exception(e.message);
    }
    return response;

  }

  @override
  Future<Response> fetchDataHomeAPIRequest(String phone) async{
    // TODO: implement fetchDataHomeAPIRequest

    Response response;
    try
    {
      response = await _dio.get('${URLConstant.datafetch}number=$phone');
    } on DioError catch (e)
    {
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> DeleteAPIRequest(String id) async{
    // TODO: implement DeleteAPIRequest
    Response response;
    try {
      print(URLConstant.baseUrl+URLConstant.deleteDataIntern+'id=$id');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.deleteDataIntern+'id=$id');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response>UpdateDataAPIRequest(String id) async{
    // TODO: implement UpdateDataAPIRequest

    Response response;
    try
    {
      print(id);
      print(URLConstant.detailfetch+'id=$id');
      response = await _dio.get('${URLConstant.detailfetch}id=$id');
    } on DioError catch (e)
    {
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> TimeinAPIRequest (String id,String date,String time,String address) async {
    // TODO: implement TimeinAPIRequest
    Response response;
    try{
      print(URLConstant.baseUrl+URLConstant.timein+'userId=$id&currentDate=$date&currentTime=$time&currentLocation=$address');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.timein+'userId=$id&currentDate=$date&currentTime=$time&currentLocation=$address');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> UpdateDetailAPIRequest(String name, String email, String password, String phone, String id) async{
    // TODO: implement UpdateDetailAPIRequest


    Response response;
    try{
      print(URLConstant.baseUrl+URLConstant.updateData+'name=$name&emailId=$email&password=$password&number=$phone&id=$id');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.updateData+'name=$name&emailId=$email&password=$password&number=$phone&id=$id');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> TimeoutAPIRequest(String id, String date, String time, String address) async{
    // TODO: implement TimeoutAPIRequest
    Response response;
    try{
      print(URLConstant.baseUrl+URLConstant.timeout+'userId=$id&currentDate=$date&currentTime=$time&currentLocation=$address');

      response = await _dio.post(URLConstant.baseUrl+URLConstant.timeout+'userId=$id&currentDate=$date&currentTime=$time&currentLocation=$address');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  }








