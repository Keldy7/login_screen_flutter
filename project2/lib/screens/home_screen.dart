import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigBar(),
      body: const ContenuWidget(),
    );
  }

  AppBar NavigBar() {
    return AppBar(
        title: const Text(""),
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search,
                        color: Colors.black, size: 25)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none,
                        color: Colors.black, size: 25)),
              ],
            ),
          )
        ],
        toolbarHeight: 30,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu, color: Colors.black, size: 25),
            onPressed: () {},
          );
        }));
  }
}

class ContenuWidget extends StatelessWidget {
  const ContenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.only(left: 15, top: 30, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose your',
                  style: GoogleFonts.ibmPlexSerif(
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                const SizedBox(height: 7),
                Text(
                  "Self Care Activity",
                  style: GoogleFonts.robotoSerif(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                const SizedBox(height: 30),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: infos.length,
                  itemBuilder: (ctx, i) => Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 245, 245),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 220,
                                    child: Text(
                                      infos[i].titre,
                                      style: GoogleFonts.robotoSerif(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "${infos[i].temps} mins",
                                    style: GoogleFonts.robotoSerif(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(18)),
                                      child: Text(
                                        " > ",
                                        style: GoogleFonts.robotoSerif(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 190,
                          width: 125,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(infos[i].image)),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                        )
                      ]),
                    ),
                  ),
                )
              ],
            ))
      ]),
    );
  }
}

class SelfData {
  final String titre;
  final String image;
  final String temps;

  SelfData({
    required this.titre,
    required this.image,
    required this.temps,
  });
}

List<SelfData> infos = [
  SelfData(
    titre: "Go out for a walk               & explore",
    image: "assets/img2.png",
    temps: "30"),
  SelfData(
    titre: "Explore new            activities",
    image: "assets/img3.png",
    temps: "45"),
  SelfData(
    titre: "Work on a passion project",
    image: "assets/img4.png",
    temps: "30"),
  SelfData(
    titre: "Take a break or read",
    image: "assets/img3.png",
    temps: "25"),
  SelfData(
    titre: "Aude la dev frontend mobile",
    image: "assets/img4.png", 
    temps: "20"),
];
