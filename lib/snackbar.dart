import 'package:flutter/material.dart';
import 'package:get/get.dart';
class snackBar extends StatelessWidget {
  const snackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar Example"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("press Me"),
            onPressed: (){
              Get.snackbar(
                "Hello","Sanskar Modi welcomes you",
                backgroundColor: Colors.pinkAccent,
                snackPosition: SnackPosition.BOTTOM,
                dismissDirection: SnackDismissDirection.HORIZONTAL,

              );
            },
          ),
        ),
      ),
    );
  }
}
