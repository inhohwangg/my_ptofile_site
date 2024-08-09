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
        Breakpoint(start: 0, end: 350, name: MOBILE),
        Breakpoint(start: 351, end: 600, name: TABLET),
        Breakpoint(start: 601, end: 1700, name: DESKTOP),
        Breakpoint(start: 1701, end: double.infinity, name: 'XL'),
      ]),
      theme: ThemeData(fontFamily: 'NanumGothic'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
