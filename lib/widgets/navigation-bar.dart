import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text('My App'), actions: [
      TextButton(
          onPressed: () {
            Get.toNamed('/profile');
          },
          child: Text('Profile')),
      TextButton(
          onPressed: () {
            Get.toNamed('/projects');
          },
          child: Text('Projects')),
      TextButton(
          onPressed: () {
            Get.toNamed('/blog');
          },
          child: Text('Blog')),
      TextButton(
          onPressed: () {
            Get.toNamed('/contact');
          },
          child: Text('Contact')),
    ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
