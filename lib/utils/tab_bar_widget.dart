import 'package:flutter/material.dart';
import 'package:sharonskitchen/utils/tab_item.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TabItem(label: 'Pasta', isSelected: true),
          TabItem(label: 'Bread', isSelected: false),
          TabItem(label: 'Ulam', isSelected: false),
          TabItem(label: 'Add-ons', isSelected: false),
        ],
      ),
    );
  }
}
