import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormScreenController extends GetxController {
  TextEditingController name;
  TextEditingController age;
  TextEditingController emailAddress;

  TextEditingController imageLink;

  @override
  void onInit() {
    name = TextEditingController();
    age = TextEditingController();
    emailAddress = TextEditingController();
    imageLink = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name = TextEditingController();
    age = TextEditingController();
    emailAddress = TextEditingController();
    imageLink = TextEditingController();
    super.dispose();
  }

void  clearDate(){
  name.clear();
  age.clear();
  emailAddress.clear();
  imageLink..clear();
}
}
