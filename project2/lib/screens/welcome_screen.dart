import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Text(
                    "Keep your          ",
                    style: GoogleFonts.ibmPlexSerif(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: const Color.fromARGB(255, 109, 107, 107)),
                  ),
                  Text(
                    "mind                    ",
                    style: GoogleFonts.ibmPlexSerif(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: const Color.fromARGB(255, 109, 107, 107)),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Healthy       ",
                    style: GoogleFonts.robotoSerif(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              )),
          SizedBox(height: height * .65),
          ElevatedButton(
            onPressed: () async {
              print(height);
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(250, 50),
              backgroundColor: const Color.fromARGB(255, 63, 63, 63),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Get started   ",
                  style: GoogleFonts.ibmPlexSerif(
                      color: const Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                const Icon(Icons.arrow_forward_outlined)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
