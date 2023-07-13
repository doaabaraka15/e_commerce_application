import 'package:flutter/material.dart';

import '../models/product.dart';
import '../utils/constants.dart';


class ItemCard extends StatelessWidget {
  Product product;
  final Function() press;

  ItemCard({super.key, required this.press, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              // width: 160,
              // height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: product.color,
              ),
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 4),
            child: Text(
              product.title,
              style: const TextStyle(color: KLiteColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding/4),
            child: Text(product.price.toString(),),
          ),
        ],
      ),
    );
  }
}