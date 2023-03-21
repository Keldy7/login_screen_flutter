import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/input.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 172, 22),
      appBar: AppBar(
        title: const Text(""),
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 254, 172, 22),
        actions: [
          TextButton(
            child: const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Text(
                "Register",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
            onPressed: () {
              print("Retour à la page de Register");
            },
          )
        ],
        toolbarHeight: 40,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.arrow_back_outlined,
              color: Colors.black, size: 22),
            onPressed: () {
              Navigator.pushReplacementNamed(
                context, '/lib/screens/welcome_screen.dart');
            },
          );
        })),
      body: Column(
        children: [
          TitleWidget(height: height),
          BodyWidget(height: height),
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: (height * .2),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 35, right: 35, top: 20, bottom: 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Sign In",
              style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(height: 3),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do tempor ",
              style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
            ),
          ]),
        ));
  }
}

class BodyWidget extends StatefulWidget {
  const BodyWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  
  final formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String name = '';
  String username = '';
  String passwd = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.height + (widget.height ) ,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        )),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Input(
                myController: _usernameController,
                placeholderTexte: "           Username",
                isPassword: false,
                onChanged: (username) => setState(() => this.username = name),
              ),
              const SizedBox(height: 10),
              Input(
                myController: _passwordController,
                placeholderTexte: "           Password",
                isPassword: true,
                onChanged: (passwd) => setState(() => this.passwd = name),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {
                      print("Retour à la page de Forgot password");
                    },
                  )
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {
                    print("Aller au Menu principal");
                  },
                ),
              ),
              const SizedBox(height: 80),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.g_mobiledata, size: 50, color: Colors.black),
                      Text(
                        "Continue with Google",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.arrow_forward, size: 30, color: Colors.black),
                    ],
                  ),
                  onPressed: () {
                    print("Connexion avec Google");
                  },
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.facebook,
                          size: 40, color: Color.fromARGB(255, 40, 102, 247)),
                      Text(
                        "Continue with Facebook",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.arrow_forward, size: 30, color: Colors.black),
                    ],
                  ),
                  onPressed: () {
                    print("Connexion avec Facebook");
                  },
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
