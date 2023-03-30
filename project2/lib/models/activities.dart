class PopularActivitiesModel {
  String titre, temps, image;

  PopularActivitiesModel(this.titre, this.temps, this.image);
}

List<PopularActivitiesModel> activity = popularActivityData
    .map((item) => PopularActivitiesModel(
        item['titre']!,
        item['temps']!,
        item['image']!))
    .toList();

var popularActivityData = [
  {
    "titre": "Go out for a walk & explore",
    "image": "2",
    "temps": "30"
  },
  {
    "titre": "Explore new activities",
    "image": "3",
    "temps": "45"
  },
  {
    "titre": "Work on a passion project",
    "image": "4",
    "temps": "30"
  },
  {
    "titre": "Take a break or read",
    "image": "3",
    "temps": "25"
  },
  {
    "titre": "Aude la dev frontend mobile",
    "image": "4",
    "temps": "20"
  },
];
