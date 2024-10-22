import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TabItem extends StatelessWidget {
  final String label;
  final bool isSelected;

  const TabItem({Key? key, required this.label, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 18.px,
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.orange : Colors.white,
        ),
      ),
    );
  }
}
