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
