import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:krishnakushwahtest2/feature/login/controller/logincontroller.dart';

class LoginView extends GetView<Logincontroller >{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(


      body:Center(
        child: Form(
          key:controller.loginFormKey,
        child: Container(
          width: Get.width,
          height: Get.height,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 12, 30, 10),
                      child: Text('Sign In',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 12, 30, 10),
                      width: 40,
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.green[100],),
                      child: Icon(Icons.camera_enhance,
                        size: 25,
                        color: Colors.green,
                      ),
                    ),

                  ],
                ),
                //for form
                Column(
                  //form starts

                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child:TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email ID/Phone Number',
                          border:OutlineInputBorder(),

                        ),

                        controller: controller.userNameController,

                        validator:(value){

                     if(value == null || value.isEmpty){
                            return 'Please enter email';
                          }
                   return null;
                          } ,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child:TextFormField(
                        // keyboardType: TextInputType.none,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                        controller: controller.userPasswordController,
                        validator:(value){
                          if(value == null || value.isEmpty){
                            return 'Please enter password';
                          }
                          return null;
                        } ,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,10,0,10),
                          child:  Text('Forgot Password ?',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                            child:Text('Sign In',
                              style:TextStyle(
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                          ),
                        ],
                      ),

                      onPressed: (){
                        controller.loginAPI();
                        print('hlw');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
                      child: Text('OR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                            child: Row(children: [
                              Icon(Icons.group_work_outlined,color: Colors.green,),
                              Text('  Login with Google',
                                style:TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                      onPressed: (){
                        print('hlw');
                      },

                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(5),
                        ),

                        ),

                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
                      child: Text('By Signing in you agree to our Terms & Conditions & Privacy Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
                //for last
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Company not registered? Sign Up'),
                  ],
                ),
              ],
            ),

          ),
        ),
      ),
      ),

    );



  }

}
