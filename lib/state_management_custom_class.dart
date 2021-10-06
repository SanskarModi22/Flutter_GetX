import 'package:flutter/material.dart';
import 'package:flutter_getx/my_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class StateManagement extends StatelessWidget {
  StateManagement({Key? key}) : super(key: key);

  MyController mc = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text("Name is ${mc.student.value.name}")),
          ElevatedButton(
            onPressed: () {
              mc.createUpperCase();
            },
            child: Text("Change to upper Case"),
          )
        ],
      ),
    );
  }
}
