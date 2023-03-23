import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 63, 63, 63),
        appBar: NavBar(),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: height * .75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: height - (height * .75),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 60, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recommanded",
                            
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  AppBar NavBar() {
    return AppBar(
        title: const Text(""),
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 63, 63, 63),
        toolbarHeight: 35,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon:
                const Icon(Icons.arrow_back_ios, color: Colors.white, size: 25),
            onPressed: () {},
          );
        }));
  }
}
