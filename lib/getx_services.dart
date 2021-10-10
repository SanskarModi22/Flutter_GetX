import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home/service.dart';
class GetXService extends StatelessWidget {
  const GetXService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Service")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Increment"),
              onPressed: () {
                Get.find<Service>().incrementCounter();
              },
            ),
          ],
        ),
      ),
    );
  }
}
