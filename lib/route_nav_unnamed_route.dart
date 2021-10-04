import 'package:flutter/material.dart';
import 'package:flutter_getx/Home/home.dart';
import 'package:get/get.dart';

class routing extends StatelessWidget {
  const routing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Un-Named Routing"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("press Me"),
            onPressed: () async {
              Get.off(HomeScreen());//Not able to come back from Home Scrren after navigating to it
              // Get.to(
              //   HomeScreen(),
              //   transition: Transition.fadeIn,
              //   curve: Curves.bounceInOut,
              //   fullscreenDialog: true,
              // );
              // Get.to(
              //   HomeScreen(),
              //   arguments: "Sanskar Here!",
              // );//Passing data to HomeScreen
              // var data = await Get.to(HomeScreen());//Receiving data from Home Screen
              // print(data);
            },
          ),
        ),
      ),
    );
  }
}
