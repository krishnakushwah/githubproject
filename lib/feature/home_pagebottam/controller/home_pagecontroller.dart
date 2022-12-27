import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:krishnakushwahtest2/core/model/signup_data_fetchresponse.dart';
import 'package:krishnakushwahtest2/core/repository/Timeinout/timein_repo_imple.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BottamhomeController extends GetxController {
  var selectedImagepath = ''.obs;

  getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagepath.value = pickedFile.path;
      if (change.value == true) {
        change.value = false;

        Timein();
      } else if (change.value == false) {
        change.value = true;
        print("timeout");
        Timeout();
      }
    } else {
      // GetSnackBar('Error','No imge is selected',snackPosition:SnackPosition.BOTTOM,);
    }
  }

  // late BottambarRepo _BottambarRepo;
  RxString currentdate = ''.obs;
  RxString currenttime = ''.obs;
  RxString loginname = ''.obs;
  RxString id = ''.obs;
  RxString email = ''.obs;

  // var DateFormat='';
  todayDate() {
    var now = new DateTime.now();

    var formatter = new DateFormat('dd-MM-yyyy');
    String formattedTime = DateFormat('kk:mm:a').format(now);
    String formattedDate = formatter.format(now);
    print(formattedTime);
    currentdate.value = formattedDate;
    currenttime.value = formattedTime;
    print(formattedDate);
  }

  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;
  RxString currentAddress = ''.obs;

  Future<void> getCurrentLatLong() async {
    final myPosition = await _geolocatorPlatform.getCurrentPosition();

    getAddress(myPosition).then((value) {
      print(value.obs);
      currentAddress = value.obs;
    });
  }

  Future<String> getAddress(Position position) async {
    if (position.latitude != null && position.longitude != null) {
      try {
        var currentPlace = await placemarkFromCoordinates(
            position.latitude, position.longitude);

        if (currentPlace != null && currentPlace.isNotEmpty) {
          final Placemark place = currentPlace.first;
          return "${place.name},${place.thoroughfare},${place.subLocality},${place.locality},${place.administrativeArea},${place.postalCode},${place.country}}";
        }
      } on Exception catch (exception) {
        print("Location exception: " +
            exception
                .toString()); // only executed if error is of type Exception
        return "${position.latitude},${position.longitude}";
      } catch (e) {
        return "${position.latitude},${position.longitude}";
      }
    } else {
      return "Nothing";
    }
    return "No Address Found";
  }

  // BottamhomeController() {
  //   _BottambarRepo = Get.find<Bottambarimple>();
  //
  // }

  List<Bottamfetch> internDataList = <Bottamfetch>[];

  var phone = '9074094167';
  RxString name = "".obs;
  RxString emailId = "".obs;
  RxString phoneno = "".obs;
  RxString password = "".obs;

  RxBool loader = false.obs;

  // fetchData() async {
  //   loader.value = false;
  //   final fetchResponse = await _BottambarRepo.fetchHomeDataAPI(phone);
  //   if (fetchResponse != null) {
  //     loader.value = true;
  //     internDataList = fetchResponse;
  //     print("data detail bottam is fetch now....");
  //     print(fetchResponse[0].name);
  //     print(fetchResponse[0].emailId);
  //     print(fetchResponse[0].phone);
  //     print(fetchResponse[0].password);
  //     loader.value = false;
  //     print(loader.value);
  //
  //     name.value = fetchResponse[0].name!;
  //     emailId.value = fetchResponse[0].emailId!;
  //     phoneno.value = fetchResponse[0].phone!;
  //     password.value = fetchResponse[0].password!;
  //   }
  //   print("Line Number 33");
  // }
  fetchdataInterns() async {
    final response = await SharedPreferences.getInstance();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    id.value = prefs.getString("id")!;
    loginname.value = prefs.getString("name")!;
    email.value = prefs.getString("email")!;

    print("getstring");
    print(email.value);
    //id.value=prefs.getString("name")!;
  }

  TimeinRepoimple _timeinRepo = Get.find<TimeinRepoimple>();

  RxBool change = true.obs;

  Timein() async {
    var response = await _timeinRepo.TimeinAPI(id.string, currentdate.string,
        currenttime.string, currentAddress.value);

    if (response != null) {}
  }

  Timeout() async {
    var response = await _timeinRepo.TimeoutAPI(id.string, currentdate.string,
        currenttime.string, currentAddress.value);
  }

  @override
  void onInit() {
    fetchdataInterns();
    final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;
    getCurrentLatLong();

    RxString currentAddress = ''.obs;
    todayDate();
    super.onInit();
  }
}
