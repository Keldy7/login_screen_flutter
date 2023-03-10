import 'package:flutter/material.dart';
import 'dart:async';
import '../components/rond_bas.dart';
import '../components/rond_haut.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(
        context, '/lib/screens/welcome_screen.dart'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
      ClipPath(
        clipper: DrawerRondTop(),
        child: Container(
          height: size.height,
          width: size.width,
          decoration:
            const BoxDecoration(color: Color.fromARGB(255, 254, 172, 22)),
        ),
      ),
      SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/beer.png", width: 150),
            Image.asset("assets/images/deeps.png", width: 130),
            Image.asset("assets/images/beercafe.png", width: 150)
          ],
        ),
      ),
      ClipPath(
        clipper: DrawerRondBottom(),
        child: Container(
          height: size.height,
          width: size.width,
          decoration:
            const BoxDecoration(color: Color.fromARGB(255, 254, 172, 22)),
        ),
      ),
    ]));
  }
}
