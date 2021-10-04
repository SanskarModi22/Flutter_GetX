import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Go back to home"),
              ),
              Text("${Get.arguments}"),
              ElevatedButton(
                onPressed: () {
                  Get.back(result: "Hello");
                },
                child: Text("Send Data back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
