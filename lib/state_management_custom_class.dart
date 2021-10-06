import 'package:flutter/material.dart';
import 'package:flutter_getx/Home/student.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class StateManagement extends StatelessWidget {
  StateManagement({Key? key}) : super(key: key);

  var student =
      Student(name: "Sanskar", age: 19).obs; //Created an object of the class
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text("Name is ${student.value.name}")),
          ElevatedButton(
            onPressed: () {
              student.update((student) {
                student!.name = student.name.toString().toUpperCase();
              });
            },
            child: Text("Change to upper Case"),
          )
        ],
      ),
    );
  }
}
