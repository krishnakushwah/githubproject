import 'package:dio/dio.dart';

abstract class HttpService {
  void init();

  Future<Response> signupAPIRequest(String Name,String Email,String Password,String Phone);
  Future<Response> loginAPIRequest(String username,String password);
  Future<Response> fetchDataAPIRequest(String phone);
  Future<Response> fetchDataDetailAPIRequest(String phone);
  Future<Response> fetchDataHomeAPIRequest(String phone);
  Future<Response> DeleteAPIRequest(String id);
  Future<Response> UpdateDataAPIRequest(String id);
  Future<Response> TimeinAPIRequest(String id,String date,String time,String address);
  Future<Response> UpdateDetailAPIRequest(String name,String email,String password,String phone,String id);

  Future<Response> TimeoutAPIRequest(String id,String date,String time,String address);


}