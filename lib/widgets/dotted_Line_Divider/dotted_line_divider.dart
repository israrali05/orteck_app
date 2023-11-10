import 'package:flutter/material.dart';
import 'package:orteck_app/utils/app_colors.dart';

class DottedLineDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 1.0, // You can adjust the height of the divider
        width: double.infinity,
        child: CustomPaint(
          painter: DottedLinePainter(),
        ),
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = AppColors.primaryColor // Set the color of the dots
      ..strokeWidth = 2.0; // Set the stroke width of the dots

    const double dashWidth = 5.0; // Set the width of each dash
    const double dashSpace = 3.0; // Set the space between each dash

    double currentX = 0;

    while (currentX < size.width) {
      canvas.drawLine(
        Offset(currentX, 0),
        Offset(currentX + dashWidth, 0),
        paint,
      );
      currentX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
