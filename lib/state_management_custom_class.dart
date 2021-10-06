import 'package:flutter/material.dart';
import 'package:flutter_getx/my_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class StateManagement extends StatelessWidget {
  StateManagement({Key? key}) : super(key: key);

  // MyController mc = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetX<MyController>(
            init: MyController(),
            builder: (controller) {
              return Text("The value is ${controller.count}");
            },
          ),
          // Obx(() => Text("Name is ${mc.student.value.name}")),
          ElevatedButton(
            onPressed: () {
              Get.find<MyController>().increment();
            },
            child: Text("Increase count"),
          )
        ],
      ),
    );
  }
}
//One way of reactive state management is to use Get.put like in previous commit or
//like this method