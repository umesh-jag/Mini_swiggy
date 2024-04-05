//food item
class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCaterory caterory;
  List<Addon> availableAddons;

  Food(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.availableAddons,
      required this.caterory});
}

//food category

enum FoodCaterory { burgers, salads, sides, desserts, drinks }

class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
