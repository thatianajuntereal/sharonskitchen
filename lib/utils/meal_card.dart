import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sharonskitchen/model/meal.dart';
import 'package:sharonskitchen/utils/colored_button.dart';
import 'package:sharonskitchen/utils/price_tag.dart';
import 'package:sharonskitchen/view/order_screen.dart';
import 'package:sharonskitchen/view/pasta_list_screen.dart';

class MealCard extends StatelessWidget {
  final Meal meal;

  const MealCard({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  meal.thumbnail,
                  fit: BoxFit.cover,
                  height: 165,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: 10.px),
              Text(
                meal.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.px,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.px),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriceTag(label: 'Solo', price: meal.price),
                ],
              ),
              SizedBox(height: 20.px),
              ColoredButton(
                backgroundColor: const Color(0xFFFF8518),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderScreen(meal: meal),
                    ),
                  );
                },
                text: 'Add to plate!',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
