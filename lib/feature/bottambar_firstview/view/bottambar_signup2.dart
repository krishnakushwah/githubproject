import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:krishnakushwahtest2/feature/Profile_pagebottam/view/profile_pageview.dart';
import 'package:krishnakushwahtest2/feature/bottambar_firstview/controller/controller_signup2.dart';
import 'package:krishnakushwahtest2/feature/home_pagebottam/view/home_pageview.dart';
import 'package:krishnakushwahtest2/feature/mydetails_pagebottam/view/mydetails_pageview.dart';

class  Signuptwo extends GetView<SignupControllerTwo>{

  SignupControllerTwo signupControllerTwo = Get.find();
  Signuptwo({Key? key}):super(key:key);
  final screens = [Bottamhomeview(),
    Bottammydetailview(),
    BottamProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(

      body:
      Obx(()=>IndexedStack(
        index: signupControllerTwo.currentIndex.value,
        children: screens,
      ),
      ),
      bottomNavigationBar: Obx(
              ()=> BottomNavigationBar(
        //type:BottomNavigationBarType.shifting,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.cyanAccent,
        showSelectedLabels: true,
        showUnselectedLabels:false,
        onTap:(index){
          signupControllerTwo.currentIndex(index);
        },
        currentIndex:signupControllerTwo.currentIndex.value,
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.white70
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.pages),
              label: "My Details",
              backgroundColor: Colors.white70
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.people),
              label: "Profile",
              backgroundColor: Colors.white70
          ),
        ],
      )
      ),





    );

      }
  }

