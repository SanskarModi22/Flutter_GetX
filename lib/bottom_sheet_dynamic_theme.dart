import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet and Dynamic Theming"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("press Me"),
            onPressed: () {
              Get.bottomSheet(
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () => Get.changeTheme(
                          ThemeData.light(),
                        ),
                        icon: Icon(Icons.light_mode),
                      ),
                      IconButton(
                        onPressed: () => Get.changeTheme(
                          ThemeData.dark(),
                        ),
                        icon: Icon(Icons.dark_mode),
                      )
                    ],
                  ),
                ),
                barrierColor: Colors.transparent,
                backgroundColor: Colors.pinkAccent[200],
              );
            },
          ),
        ),
      ),
    );
  }
}
