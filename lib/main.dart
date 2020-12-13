import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pro/baindings/formScreenPainding.dart';
import 'package:test_pro/presentation/page/formScreen.dart';
import 'package:test_pro/presentation/page/readDate.dart';

import 'presentation/page/home.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: HomePage.id,
      getPages: [
        GetPage(name: FormScreen.id, page: () => FormScreen(), binding: FormScreenBinding()),
        GetPage(name: ReadDate.id, page: () => ReadDate()),
        GetPage(name: HomePage.id, page: () => HomePage())
      ],
    );
  }
}
