import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:krishnakushwahtest2/feature/Profile_pagebottam/controller/profile_pagecontroller.dart';

class BottamProfileView extends GetView<BottamprofileController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile Page"),
      ),
      body:  Obx(()=> controller.loader.value?Center (child: CircularProgressIndicator(),):
      Center(
        child: Container(
          //color: Colors.greenAccent,
          width: Get.width,
          height: 450,
          child: Card(
            color: Colors.cyan,
child: Padding(
  padding: const EdgeInsets.all(12.0),
  child:   Column(
    children: [
      CircleAvatar(backgroundColor: Colors.brown,radius: 30,),
      Text(controller.name.value, style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 27),),

      Text(controller.emailId.value, style: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
          fontSize: 17),),
      SizedBox(height: 25),

      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Name",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 15),),
          Text(controller.name.value,style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w600,
              fontSize: 15),),
          SizedBox(height: 15),

          Text("Email",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 15),),
          Text(controller.emailId.value,style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w600,
              fontSize: 15),),
          SizedBox(height: 15),

          Text("Phone",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 15),),
          Text(controller.phoneno.value,style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w600,
              fontSize: 15),),
          SizedBox(height: 15),

          Text("Password",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 15),),
          Text(controller.password.value,style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w600,
              fontSize: 15),),
        ],
      )

    ],

  ),
),
          ),
        ),
      ),
      ),
    );
  }

}