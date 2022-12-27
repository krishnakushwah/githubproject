import 'package:krishnakushwahtest2/core/model/login_response.dart';

abstract class LoginRepo{
  Future<List<LoginResponse>?>loginAPI(String username,String password);
}