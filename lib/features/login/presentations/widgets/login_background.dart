import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:scan_qr/core/utils/app_colors.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        HalfCircle(diameter: width * 0.95),
        Transform.translate(
          offset: Offset(width * .5, 0),
          child: HalfCircle(diameter: width * 0.75),
        ),
      ],
    );
  }
}

class HalfCircle extends StatelessWidget {
  final double diameter;

  const HalfCircle({super.key, required this.diameter});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      size: Size(diameter, diameter),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = AppColors.primary.withOpacity(0.2);

    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.width * 0.45, 0),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      -math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
