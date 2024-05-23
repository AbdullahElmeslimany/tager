import 'package:flutter/material.dart';

class DolDurmaClipper extends CustomClipper<Path> {
  final double right;
  final double holeRadius;
  DolDurmaClipper({required this.right, required this.holeRadius});

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - right - holeRadius, 15.0)
      ..arcToPoint(
        Offset(size.width - right, 15),
        clockwise: false,
        radius: const Radius.circular(1),
      )
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width - right, size.height)
      ..arcToPoint(
        Offset(size.width - right - holeRadius, size.height),
        clockwise: false,
        radius: const Radius.circular(1),
      );

    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
