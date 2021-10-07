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

  // var count = 0.obs;
  // void increment() {
  //   count++;
  var count = 0.obs;
  void increment() {
    count++;
  }

  void onInit() {
    // called every time whenever the value of count variable changes
    ever(count, (_) => print(count));
    // called every time whenever the value of array variable changes
    everAll([count], (_) => print(count));
    // Called very time when the user has stoppped writing
    debounce(count, (callback) => print("The user has stopped writing"),
        time: Duration(seconds: 2));
    //Called only once when the variable value changes
    once(count, (_) => print(count));
    // Ignore all changes within 3 seconds
    interval(count, (callback) => print("Ignore all changes"),
        time: Duration(seconds: 3));
  }
}
