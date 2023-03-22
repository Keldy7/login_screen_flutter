class Vin {
  final String nom;
  final String image;
  final String prix;

  Vin({
    required this.nom,
    required this.image,
    required this.prix,
  });
}
List<Vin> Vins = [
    Vin(
        nom: "Domaine Carneros Le Reve",
        image: "assets/vin6.png",
        prix: "109,99"),
    Vin(
        nom: "Bellavista Rose Franciacorta",
        image: "assets/vin2.png",
        prix: "44,99"),
    Vin(nom: "L'Ermitage Brut Rose", image: "assets/vin5.png", prix: "149"),
    Vin(nom: "Valpierre", image: "assets/vin3.png", prix: "149,99"),
    Vin(nom: "RLG", image: "assets/vin4.png", prix: "109,98"),
  ];