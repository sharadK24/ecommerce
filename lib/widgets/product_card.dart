import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: Center(child: Icon(Icons.image, size: 80)),
          ),
          Text(product.name,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text("\$${product.price}",
              style: const TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}
