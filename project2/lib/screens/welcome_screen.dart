import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img1_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Keep your",
                style: GoogleFonts.ibmPlexSerif(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromARGB(255, 109, 107, 107)),
              ),
              Text(
                "mind",
                style: GoogleFonts.ibmPlexSerif(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromARGB(255, 109, 107, 107)),
              ),
              const SizedBox(height: 10),
              Text(
                "Healthy",
                style: GoogleFonts.robotoSerif(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(height: height * .675),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350, 55),
                      backgroundColor: const Color.fromARGB(255, 63, 63, 63),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Get started",
                          style: GoogleFonts.ibmPlexSerif(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w300,
                              fontSize: 20),
                        ),
                        const Icon(Icons.arrow_forward_outlined)
                      ],
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
