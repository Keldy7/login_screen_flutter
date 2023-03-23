import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: height * .58,
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
          ContentWidget(height: height),
        ],
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      width: double.infinity,
      height: height - (height * .58),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 254, 172, 22),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          )),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 30, right: 30, top: 60, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(height: 3),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do tempor incididunt ut labore et.",
              style:
                  GoogleFonts.poppins(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, '/lib/screens/login_screen.dart');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text("Sign In",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                  )
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Bordure arrondie du bouton
                      ),
                    ),
                    child: Text("Sign Up",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      )
                    ),
                  ),
                ),
              ],
            ), 
          ],
        ),
      ),
    );
  }
}
