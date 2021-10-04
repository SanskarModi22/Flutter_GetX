import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RouteNamed extends StatelessWidget {
  const RouteNamed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Named Routing"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("press Me"),
            onPressed: ()  {
              Get.toNamed('/home');
              // Get.toNamed('/home/1234');
              // Get.toNamed('/home?name=Sanskar &content=Modi');
            },
          ),
        ),
      ),
    );
  }
}
