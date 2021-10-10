import 'package:flutter/material.dart';
import 'package:flutter_getx/Home/home.dart';
import 'package:flutter_getx/dependency_injection.dart';
import 'package:flutter_getx/internationalization.dart';
import 'package:flutter_getx/reactive_state_manager.dart';
import 'package:flutter_getx/route_named.dart';
import 'package:flutter_getx/route_nav_unnamed_route.dart';
import 'package:flutter_getx/snackbar.dart';
import 'package:flutter_getx/state_management_custom_class.dart';
import 'package:flutter_getx/unique_id.dart';
import 'package:get/get.dart';

import 'Home/service.dart';
import 'bottom_sheet_dynamic_theme.dart';
import 'dialog.dart';
import 'getx_services.dart';
import 'messages.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}
Future<void> initServices() async {
  print('starting services ...');
  await Get.putAsync<Service>(() async => await Service());
  print('All services started...');
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      home: GetXService(),
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/home/:someValue', page: () => HomeScreen())
      ],
    );
  }
}
