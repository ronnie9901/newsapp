import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/NewsApp/view/screen/homepage.dart';

import 'NewsApp/view/screen/splacesrcen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false ,
      home: splace(),
    );

  }
}



