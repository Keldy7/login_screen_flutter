import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/activities.dart';

class DetailScreen extends StatelessWidget {
  final PopularActivitiesModel popularActivityData;
  const DetailScreen({Key? key, required this.popularActivityData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 63, 63, 63),
        appBar: navBar(),
        body: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: (size.height * .22),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * .5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popularActivityData.titre,
                              style: GoogleFonts.robotoSerif(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 12),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(80, 20),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Text(
                                "${popularActivityData.temps} mins",
                                style: GoogleFonts.ibmPlexSerif(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * .395,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img3.png"))),
                      )
                    ],
                  ),
                )),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 30, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recommanded activities",
                      style: GoogleFonts.robotoSerif(
                          fontSize: 13, color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView.builder(
                          itemCount: activities.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Card(
                                  elevation: 0,
                                  child: ListTile(
                                    title: Text(
                                      activities[index].titre,
                                      style: GoogleFonts.robotoSerif(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      activities[index].sousTitre,
                                      style: GoogleFonts.robotoSerif(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                    leading: Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: const Color.fromARGB(
                                                255, 234, 234, 234)),
                                        child: Image.asset(
                                            "assets/img${activities[index].image}.png")),
                                    trailing: Text(
                                      "ADD",
                                      style: GoogleFonts.robotoSerif(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30)
                              ],
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ));
  }

  AppBar navBar() {
    return AppBar(
        title: const Text(""),
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 63, 63, 63),
        toolbarHeight: 35,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon:
              const Icon(Icons.arrow_back_ios, color: Colors.white, size: 25),
            onPressed: () {
              Navigator.pushReplacementNamed(
                context, "/lib/screens/home_screen.dart");
                                        
            },
          );
        }));
  }
}

class PopularActivitiesRecommanded {
  final String titre, sousTitre, image;

  PopularActivitiesRecommanded(
      {required this.image, required this.sousTitre, required this.titre});
}

List<PopularActivitiesRecommanded> activities = [
  PopularActivitiesRecommanded(
      titre: "Reading",
      sousTitre: "Spark your creactivity or inspiration reading books ",
      image: "1"),
  PopularActivitiesRecommanded(
      titre: "Meditate",
      sousTitre: "Enhance your focus and empathy",
      image: "2"),
  PopularActivitiesRecommanded(
      titre: "Cooking",
      sousTitre: "Experiment with different ingredients to make perfect dish",
      image: "3"),
  PopularActivitiesRecommanded(
      titre: "Stretch",
      sousTitre: "Keep your muscles flexible, strong and healthy",
      image: "4"),
  PopularActivitiesRecommanded(
      titre: "Writing",
      sousTitre: "Write the sentences for escaping",
      image: "5"),
];
