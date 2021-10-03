import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Dialoge extends StatelessWidget {
  const Dialoge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Example"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("press Me"),
            onPressed: (){
              Get.defaultDialog(
                title: "Name",
                middleText: "Sanskar Modi",
                onCancel: (){},
                onConfirm: (){
                  Get.back();
                },


              );
            },
          ),
        ),
      ),
    );
  }
}
