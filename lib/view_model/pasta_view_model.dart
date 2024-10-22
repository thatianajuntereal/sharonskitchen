import 'package:flutter/material.dart';
import 'package:sharonskitchen/model/meal.dart';
import '../services/api_service.dart';

class PastaViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<Meal> meals = [];
  bool isLoading = true;

  PastaViewModel() {
    fetchPastaRecipes();
  }

  Future<void> fetchPastaRecipes() async {
    try {
      meals = await _apiService.fetchPastaRecipes();
    } catch (e) {
      debugPrint('Error: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
