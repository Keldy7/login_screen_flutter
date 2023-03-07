import 'package:flutter/rendering.dart';

class DrawerRondBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(-130.0, size.height), radius: 330));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
