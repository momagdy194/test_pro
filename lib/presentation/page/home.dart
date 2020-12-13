import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'formScreen.dart';
import 'readDate.dart';

class HomePage extends StatelessWidget {
  static const id = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.toNamed(FormScreen.id);
              },
              child: Text("Add Users"),
            ),
            RaisedButton(
              onPressed: () {
                Get.toNamed(ReadDate.id);
              },
              child: Text("View Users"),
            ),
          ],
        ),
      ),
    );
  }
}
