//If we want that every time the value of variable changes then all the widgets that uses the variable must update itself then the value must be reactive or observable. To make value reactive we use .obs.

// To update the widget which uses Rx variable must be placed inside Obx(()=>Your widget which uses Rx)
//Other ways
//1 Using Rx type
//final name = RxString('');
//2 Using Dart Generics , Rx<Type>
//final name = Rx<String>('')
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RxState extends StatelessWidget {
  RxState({Key? key}) : super(key: key);
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text("value is ${count}")),
              ElevatedButton(
                onPressed: () => increment(),
                child: Text("Raise"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
