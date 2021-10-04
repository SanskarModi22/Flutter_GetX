import 'package:flutter/material.dart';
import 'package:flutter_getx/route_nav_unnamed_route.dart';
import 'package:flutter_getx/snackbar.dart';
import 'package:get/get.dart';

import 'bottom_sheet_dynamic_theme.dart';
import 'dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: routing(),
    );
  }
}

