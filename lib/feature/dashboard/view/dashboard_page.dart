import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/constant/route_constant.dart';
import 'package:krishnakushwahtest2/feature/dashboard/controller/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(


        child: Container(
          height : Get.height,
          width : Get.width,
          padding: EdgeInsets.all(10),

          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset('assets/dashboard.jpg', height: 300,width: 400,),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(10,10,10,10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Track Employee Attendance',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'With Time',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,),
                            ),

                          ],
                        ),
                      ),
                    ],
                  )
              ),

              Container(
                height: 40,
                width: 500,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),

                child: ElevatedButton(onPressed: () {
                  Get.toNamed(RouteConstant.login);

                },

                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Login", style:TextStyle(
                            color: Colors.white,
                            fontSize: 15,fontWeight: FontWeight.bold

                        )

                        ),
                      ],
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 500,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),

                child: ElevatedButton(onPressed: () {
                  Get.toNamed(RouteConstant.signup);
                },
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: BorderSide(color: Colors.cyan,width: 1.5,style: BorderStyle.solid),borderRadius: BorderRadius.circular(7),
                      ),

                      ),


                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Register Organization",style:TextStyle(
                          color: Colors.cyan,
                          fontSize: 14,

                        )
                        ),
                      ],
                    )
                ),
              ),
            ],
          ),


        ),
      ),
    );




  }

}