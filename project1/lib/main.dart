import 'package:flutter/material.dart';
import 'package:project1/screens/launch_screen.dart';

import 'screens/login_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 1',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const LaunchScreen(),
      routes: {
        "/lib/screens/welcomeScreen.dart" : (_) => const WelcomeScreen(),
        "/lib/screens/loginScreen.dart" : (_) => const LoginScreen(),
        
      },
    );
  }
}
