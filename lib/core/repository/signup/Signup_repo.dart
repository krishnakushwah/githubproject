
import 'package:krishnakushwahtest2/core/model/signup_data_fetchresponse.dart';
import 'package:krishnakushwahtest2/core/model/signup_response.dart';

abstract class SignUpRepo{
  Future<SIgnupResponse> signupAPI(String Name,String Email,String Password,String Phone);
//   Future<List<FetchDataResponse>?> fetchdataAPI(String email);
//   Future<LoginResponse> deleteAPI(String id);
//   Future<LoginResponse> updatedataAPI(String id);
//
}