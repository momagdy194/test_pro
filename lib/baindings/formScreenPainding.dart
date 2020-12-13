import 'package:get/get.dart';
import 'package:test_pro/controller/formScreenController.dart';

class FormScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FormScreenController());
  }
}
