
import 'package:krishnakushwahtest2/core/model/timein_response.dart';

abstract class TimeinRepo{
  Future<Timeinresponse>TimeinAPI(String id,String date,String time,String address);
  Future<Timeinresponse>TimeoutAPI(String id,String date,String time,String address);




}