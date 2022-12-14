import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hpc_offline2/views/home.dart';
//import 'package:hpc_offline2/login.dart';

import 'views/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
