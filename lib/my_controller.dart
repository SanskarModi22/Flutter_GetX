import 'package:get/get.dart';
import 'Home/student.dart';

class MyController extends GetxController {
  var student =
      Student(name: "Sanskar", age: 19).obs; //Created an object of the class
  void createUpperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }
}
