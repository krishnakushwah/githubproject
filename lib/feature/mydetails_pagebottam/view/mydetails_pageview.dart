import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:krishnakushwahtest2/feature/mydetails_pagebottam/controller/mydetails_pagecontroller.dart';

class Bottammydetailview extends GetView<BottamMydetailsController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottam Mydetail view"),

      ),

body:
      Container(
        width: 600,
        height: 800,
        child: Obx(()=> controller.loader.value ? Center (child: CircularProgressIndicator(),):
    SingleChildScrollView(
    scrollDirection: Axis.horizontal,
     child:  DataTable(
        border: TableBorder.all(borderRadius:BorderRadius.all(Radius.circular(2))),
               // Datatable widget that have the property columns and rows.
                 columns: const [
                   // Set the name of the column
                   DataColumn(label: Text('Name',style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: 17),)),
                   DataColumn(label: Text('Email', style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: 17),)),
                   DataColumn(label: Text('Password',style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: 17),)),
                   DataColumn(label: Text('Edit',style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: 17),)),
                   DataColumn(label: Text('Delete',style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: 17),)),
                 ],
          rows: controller.internDataList.map((user) {

            return DataRow(cells: [
              DataCell(
                SizedBox(
                  width: Get.width * 0.37,
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(controller.name.value)
                    ],
                  ),
                ),
              ),
              DataCell(
                SizedBox(
                  width: Get.width * 0.37,
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(controller.emailId.value)
                    ],
                  ),
                ),
              ),
              DataCell(
                SizedBox(
                  width: Get.width * 0.37,
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(controller.password.value)
                    ],
                  ),
                ),
              ),

              DataCell(
                SizedBox(
                  width: Get.width * 0.37,
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(onPressed:(){ controller.UpdateData(user.id!);
                      },icon: const Icon(Icons.edit)),
                    ],
                  ),
                ),
              ),
              DataCell(
                SizedBox(
                  width: Get.width * 0.37,
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(onPressed:(){
                       controller.DeleteData(user.id.toString());

                      },icon: const Icon(Icons.delete)),
                    ],
                  ),
                ),
              ),
            ]);

          }).toList(),
        ),
        ),
        ),
      ),
    );
  }

}