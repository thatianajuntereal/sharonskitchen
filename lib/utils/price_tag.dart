import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  final String label;
  final double price;

  const PriceTag({Key? key, required this.label, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'PHP ${price.toStringAsFixed(2)}',
          style: const TextStyle(
            fontSize: 18,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
