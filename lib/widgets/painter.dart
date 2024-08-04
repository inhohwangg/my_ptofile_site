import 'package:flutter/material.dart';
import 'dart:math';

class PaintExplosionPainter extends CustomPainter {
  final double radius;

  PaintExplosionPainter(this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    for (int i = 0; i < 10; i++) {
      final angle = (2 * pi / 10) * i;
      final x = radius * cos(angle);
      final y = radius * sin(angle);
      canvas.drawCircle(
          Offset(size.width / 2 + x, size.height / 2 + y), 5, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
