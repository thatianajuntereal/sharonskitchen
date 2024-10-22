import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sharonskitchen/model/meal.dart';
import 'package:sharonskitchen/utils/colored_button.dart';

class OrderScreen extends StatelessWidget {
  final Meal meal;

  const OrderScreen({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1D23),
      appBar: AppBar(
        title: Text('Order: ${meal.name}'),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF1C1D23),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon:
                const Icon(Icons.favorite_border_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0.px),
              child: Image.network(meal.thumbnail),
            ),
            SizedBox(height: 20.px),
            Text(
              meal.name,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 10.px),
            Text(
              'Price: PHP ${meal.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20, color: Colors.orange),
            ),
            const SizedBox(height: 20),
            ColoredButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Order placed successfully!')),
                );
                Navigator.pop(context);
              },
              text: 'Confirm Order',
              backgroundColor: const Color(0xFFFF8518),
            ),
          ],
        ),
      ),
    );
  }
}
