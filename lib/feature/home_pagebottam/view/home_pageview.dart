
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:krishnakushwahtest2/feature/home_pagebottam/controller/home_pagecontroller.dart';

class Bottamhomeview extends GetView<BottamhomeController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Obx(
      () => controller.loader.value
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: 500,
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    controller.loginname.value,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Text(
                                    controller.email.value,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.grey,
                                    backgroundImage:
                                        controller.change.value == false
                                            ? FileImage(File(controller
                                                .selectedImagepath
                                                .value)) as ImageProvider
                                            : const AssetImage("assets/google.jpeg"),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 60),
                          Container(
                            height: 50,
                            //Text("Time Out",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                            width: 500,
                            child: ElevatedButton(
                              onPressed: () {
                                //controller.Timeout();
                                 controller.getImage(ImageSource.camera);
                                //controller.Timein();
                              },
                              child: controller.change == true
                                  ? Text("Time In",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700))
                                  : Text("Time Out",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700)),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xffff8000)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 25,
                                color: Color(0xff327649),
                              ),
                              Text(
                                "Your Location",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(
                                Icons.refresh_outlined,
                                size: 25,
                                color: Color(0xff327649),
                              )
                            ],
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(),
                  Card(
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                controller.currentAddress.value,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              Text(
                                controller.currentdate.value,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              Text(
                                controller.currenttime.value,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              Text(
                                "(Accurate upto 11.02 m)",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Within Geofence",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color(0xff327649)),
                                ),
                              )
                            ],
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    ));
  }
}
