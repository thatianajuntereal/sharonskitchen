import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sharonskitchen/utils/bottom_nav_bar.dart';
import 'package:sharonskitchen/utils/meal_card.dart';
import 'package:sharonskitchen/utils/tab_bar_widget.dart';
import 'package:sharonskitchen/view_model/pasta_view_model.dart';

class PastaListScreen extends StatelessWidget {
  const PastaListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1D23),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1D23),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Consumer<PastaViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.px),
                  child: Text(
                    'Homemade food at your doorstep!',
                    style: TextStyle(
                      fontSize: 24.px,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 15.px),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: const TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      filled: true,
                      fillColor: const Color(0xFF2A2B32),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.px),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.px),
                const TabBarWidget(), // Horizontal Tab
                Expanded(
                  child: CarouselSlider.builder(
                    itemCount: viewModel.meals.length,
                    itemBuilder: (context, index, realIndex) {
                      final meal = viewModel.meals[index];
                      return MealCard(meal: meal); // Meal card widget
                    },
                    options: CarouselOptions(
                      height: 400,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.easeInOut,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(seconds: 2),
                      viewportFraction: 0.8,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomNavBar(), // Bottom nav bar widget
    );
  }
}
