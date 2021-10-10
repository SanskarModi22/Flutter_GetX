import 'package:flutter/material.dart';
import 'package:flutter_getx/my_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Internationalization extends StatelessWidget {
  Internationalization({Key? key}) : super(key: key);

  MyController mc = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(children: [
              Text(
                'hello'.tr,
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
              ElevatedButton(
                onPressed: () {
                  mc.changeLanguage('en', 'US');
                },
                child: Text('English'),
              ),
              ElevatedButton(
                onPressed: () {
                  mc.changeLanguage('fr', 'FR');
                },
                child: Text('French'),
              ),
              ElevatedButton(
                onPressed: () {
                  mc.changeLanguage('hi', 'IN');
                },
                child: Text('Hindi'),
              )
            ]),
          )
        ],
      ),
    );
  }
}
//One way of reactive state management is to use Get.put like in previous commit or
//like this method

//Here we are using simple state management using GetBuilder instead of reactive state management.
//In MyController class we have to use update() for simple state management.
//Rest another way instead of init is using Get.put
