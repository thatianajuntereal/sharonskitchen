import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sharonskitchen/model/meal.dart';

class ApiService {
  Future<List<Meal>> fetchPastaRecipes() async {
    const url = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=Pasta';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List meals = json.decode(response.body)['meals'];
      return meals.map((json) => Meal.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load pasta recipes');
    }
  }
}
