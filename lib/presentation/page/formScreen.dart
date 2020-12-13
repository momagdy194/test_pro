import 'package:flutter/material.dart';
import 'file:///C:/Users/saber/AndroidStudioProjects/test_pro/lib/presentation/utill/utill.dart';
import 'package:get/get.dart';
import 'package:test_pro/controller/formScreenController.dart';
import 'package:test_pro/data/dormScreenData.dart';

class FormScreen extends GetView<FormScreenController> {
  static const id ="FormScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:ListView(children: [
        TextFieldComponent(title: "name", keyBoardType: TextInputType.text, icon: Icons.person, controllers: controller.name),
        TextFieldComponent(title: "age", keyBoardType: TextInputType.number, icon: Icons.person, controllers: controller.age),
        TextFieldComponent(title: "emailAddress", keyBoardType: TextInputType.emailAddress, icon: Icons.person, controllers: controller.emailAddress),
        TextFieldComponent(title: "profileImageLink", keyBoardType: TextInputType.text, icon: Icons.image, controllers: controller.imageLink),
    RaisedButton(onPressed: (){

      MyData.addUsers(controller.name.text, controller.age.text, controller.emailAddress.text, controller.imageLink.text);
    },child: Text("add user Details"),)

      ],) ,
    );
  }
}
