import 'package:flutter/material.dart';

class CustomMenuIcon extends StatelessWidget {
  final double width;
  final double height;
  final double lineThickness;
  final double lineSpacing;

  const CustomMenuIcon({
    Key? key,
    this.width = 28.0,
    this.height = 20.0,
    this.lineThickness = 2.0,
    this.lineSpacing = 6.0, // Adjust spacing between the lines
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: CustomPaint(
        painter: _MenuIconPainter(lineThickness, lineSpacing),
      ),
    );
  }
}

class _MenuIconPainter extends CustomPainter {
  final double lineThickness;
  final double lineSpacing;

  _MenuIconPainter(this.lineThickness, this.lineSpacing);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = lineThickness;

    double firstLineY = size.height / 2 - lineSpacing;
    double secondLineY = size.height / 2;
    double thirdLineY = size.height / 2 + lineSpacing;

    canvas.drawLine(Offset(0, firstLineY), Offset(size.width, firstLineY), paint);
    canvas.drawLine(Offset(0, secondLineY), Offset(size.width, secondLineY), paint);
    canvas.drawLine(Offset(0, thirdLineY), Offset(size.width, thirdLineY), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
