import 'package:flutter/material.dart';
import 'package:piapp/adscreen.dart';
import 'package:piapp/login.dart';
import 'package:piapp/mainpage.dart';
import 'package:piapp/nextsscreen.dart';
import 'adduser.dart';

import 'package:piapp/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 917),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
