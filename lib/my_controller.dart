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
  var count = 0;
  // void increment() {
  //   count++;
  //   update();
  // }
  void increment() async {
    await Future<int>.delayed(Duration(seconds: 2));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print("cleaned");
  }

  @override
  void onInit() {
    print("init");
    super.onInit();
  }

  void onClose() {
    print("init");
    super.onClose();
  }
}
