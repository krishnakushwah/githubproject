import 'package:krishnakushwahtest2/core/model/signup_data_fetchresponse.dart';
import 'package:krishnakushwahtest2/core/model/signup_response.dart';
import 'package:krishnakushwahtest2/core/model/update_response.dart';

abstract class BottambarRepo{
  Future<List<Bottamfetch>?>fetchDataAPI(String phone);
  // Future<SIgnupResponse> UpdatedataAPI(String id);
   Future<SIgnupResponse>DeleteAPI(String id);
  Future<List<Bottamfetch>?>fetchDetailDataAPI(String phone);
  Future<List<Bottamfetch>?>fetchHomeDataAPI(String phone);
  Future<List<Bottamfetch>?>UpdateDataAPI(String id);
  Future<List<UpdateResponse>?>UpdateDetailAPI(String name,String email,String password,String phone,String id);

}