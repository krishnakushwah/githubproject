import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:krishnakushwahtest2/feature/network/networkcontroller/network_controller.dart';
import 'package:krishnakushwahtest2/feature/signup/controller/signup_controller.dart';

class SignupView extends GetView<SignupController>{
  final NetworkController _networkController=Get.find<NetworkController>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

          title: Text("SIGNUP"),

         //Icon:(Icon(Icons.arrow_back)) ,
       // backgroundColor: Colors.white70,
      ),

      body:
     // Center(child: Text("nadk"),),
      Center(

        child: Form(
        key:controller.signupFormKey,
          child: Container(
            width: 600,
            height: 650,
            // height : Get.height,
            // width : Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white10,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 201, 204, 202),
                  offset: const Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
                //BoxShadow
              ],
            ),
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // first row

                  //for form
                  Column(
                    //form starts

                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 18),
                          child:TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              labelText: 'Enter the Name ',
                              border:OutlineInputBorder(),

                            ),

                           controller: controller.NameController,

                            validator:(value){

                              if(value == null || value.isEmpty){
                                return 'Please enter your Name';
                              }
                              return null;
                            } ,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 18),
                        child:TextFormField(
                           keyboardType: TextInputType.emailAddress,
                         // obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Enter Email-ID',
                            border: OutlineInputBorder(),
                          ),
                          controller: controller.EmailController,
                          validator:(value){
                            if(value == null || value.isEmpty){
                              return 'Please enter email-id';
                            }
                            return null;
                          } ,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 18),
                        child:TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Enter Password',
                            border: OutlineInputBorder(),
                          ),
                           controller: controller.PasswordController,
                          validator:(value){
                            if(value == null || value.isEmpty){
                              return 'Please enter password';
                            }
                            return null;
                          } ,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 18),
                        child:TextFormField(
                          keyboardType: TextInputType.phone,
                          //obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Enter phone number',
                            border: OutlineInputBorder(),
                          ),
                           controller: controller.PhoneController,
                          validator:(value){
                            if(value == null || value.isEmpty){
                              return 'Please phone number';
                            }
                            return null;
                          } ,
                        ),
                      ),
                      Container(
                        child: Obx(()=>(Text(_networkController.connectionStatus.value==1?"wificonnected":(_networkController.connectionStatus.value==2?'Mobile':'no connection'))),
                      ),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,90, 0, 12),
                        child: ElevatedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0,12, 0, 12),
                                child:Text('SIGNUP',
                                  style:TextStyle(
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),
                              ),
                            ],
                          ),

                          onPressed: (){
                            controller.signupAPI();
                         // Get.toNamed(RouteConstant.signupTwo);
                            print('hlw');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.teal),
                          ),
                        ),
                      ),



                    ],


                  ),
                  //for last

                ],
              ),

            ),
          ),

        ),
      ),

    );


  }

}