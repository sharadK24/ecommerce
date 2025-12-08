import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CategoryChip(title: "All"),
        CategoryChip(title: "Dresses"),
        CategoryChip(title: "Jackets"),
        CategoryChip(title: "Jeans"),
      ],
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String title;
  const CategoryChip({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Chip(
        backgroundColor: title == "Dresses"
            ? Colors.green
            : Colors.white,
        label: Text(title),
      ),
    );
  }
}
