import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_profile_site/pages/home-page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) =>
          ResponsiveBreakpoints.builder(child: child!, breakpoints: [
        Breakpoint(start: 0, end: 450, name: MOBILE),
        Breakpoint(start: 451, end: 800, name: TABLET),
        Breakpoint(start: 801, end: 1920, name: DESKTOP),
        Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      ]),
      theme: ThemeData(fontFamily: 'NanumGothic'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
