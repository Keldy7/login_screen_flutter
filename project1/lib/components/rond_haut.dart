import 'package:flutter/rendering.dart';

class DrawerRondTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width, 20.0), radius: 120));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
