import 'package:flutter/material.dart';
import 'package:flutter_getx/my_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class UniqueiD extends StatelessWidget {
  UniqueiD({Key? key}) : super(key: key);

  MyController mc = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // GetBuilder<MyController>(
          //   // initState: (data) => mc.increment(),
          //   // dispose: (_) => mc.cleanUpTask(),
          //   id: 'txtCount',
          //   builder: (controller) {
          //     return Text("The value is ${controller.count}");
          //   },
          // ),
          // GetBuilder<MyController>(
          //   // initState: (data) => mc.increment(),
          //   // dispose: (_) => mc.cleanUpTask(),

          //   builder: (controller) {
          //     return Text("The value is ${controller.count}");
          //   },
          // ),
          // Obx(() => Text("Name is ${mc.student.value.name}")),
          ElevatedButton(
            onPressed: () {
              mc.increment(); //Used for creating the instance of MyController
            },
            child: Text("Increase count"),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            // onPressed: () {
            //   mc.increment(); //Used for creating the instance of MyController
            // },
            child: TextField(onChanged: (val) {
              mc.increment();
            }),
          )
        ],
      ),
    );
  }
}
//In myController class in the update function we are specifying the id so the builder method in which the id matches will only update .