class Meal {
  final String id;
  final String name;
  final String thumbnail;
  final double price;

  Meal({
    required this.id,
    required this.name,
    required this.thumbnail,
    required this.price,
  });

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      id: json['idMeal'],
      name: json['strMeal'],
      thumbnail: json['strMealThumb'],
      price: (10 + (50 * (json['idMeal'].hashCode % 100) / 100))
          .toDouble(), // Random price between 10 to 60
    );
  }
}
