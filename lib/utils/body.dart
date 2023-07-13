import 'package:e_commerce_app/models/product.dart';
import 'package:e_commerce_app/screens/details_screen.dart';
import 'package:e_commerce_app/utils/category.dart';
import 'package:e_commerce_app/utils/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold, color: KTextColor),
          ),
        ),
        const Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding,
          ),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .75,
                mainAxisSpacing: defaultPadding,
                crossAxisSpacing: defaultPadding),
            itemBuilder: (context, index) {
              return ItemCard(
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                product: products[index],
                              ))),
                  product: products[index]);
            },
          ),
        ))
      ],
    );
  }
}
