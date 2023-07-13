import 'package:e_commerce_app/models/product.dart';
import 'package:e_commerce_app/utils/app_bar.dart';
import 'package:e_commerce_app/utils/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/product_details_widget.dart';

class DetailsScreen extends StatelessWidget {
  Product product;

  DetailsScreen({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(product.color, context),
      body: ProductDetails(product: product),
    );
  }
}


