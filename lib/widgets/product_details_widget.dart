import 'package:e_commerce_app/models/count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/product.dart';
import '../utils/constants.dart';
import 'color_circle.dart';
import 'outline_button.dart';

class ProductDetails extends StatefulWidget {
  final Product product;

  const ProductDetails({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int item = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * .35),
                  padding: EdgeInsets.only(
                      top: size.height * .12,
                      left: defaultPadding,
                      right: defaultPadding),
                  // height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Color',
                                  textAlign: TextAlign.start,
                                ),
                                Row(
                                  children: [
                                    ColorCircle(
                                        colorValue: Color(0xff356c95),
                                        isSelected: true),
                                    ColorCircle(
                                      colorValue: Color(0xfff8c078),
                                    ),
                                    ColorCircle(
                                      colorValue: Color(0xffa29b9b),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: const TextStyle(color: KTextColor),
                                children: [
                                  const TextSpan(text: "Size\n"),
                                  TextSpan(
                                    text: '${widget.product.size} cm',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding),
                        child: Text(
                          widget.product.description,
                          style: const TextStyle(height: 1.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                OutlineButton(
                                  icon: Icons.add,
                                  press: () {
                                    setState(() {
                                      item++;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: defaultPadding / 2,
                                ),
                                Text(
                                  item.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(color: KTextColor),
                                ),
                                const SizedBox(
                                  width: defaultPadding / 2,
                                ),
                                OutlineButton(
                                  icon: Icons.remove,
                                  press: () {
                                    setState(() {
                                      item--;
                                    });
                                  },
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 32,
                              width: 32,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffff6464),
                              ),
                              child: SvgPicture.asset('assets/icons/heart.svg'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: defaultPadding/2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlineButton(
                            height: 35,
                              press: () {},
                              icon: Icons.add_shopping_cart_outlined),
                          Container(
                            height: 35,
                            width: 285,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.blue),
                            child: Center(
                                child: Text(
                              'Add to Cart',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: KTextColor),
                            )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hand Page',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.product.title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(text: "Price\n"),
                                TextSpan(
                                    text: '\$${widget.product.price}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                              child: Image.asset(
                            widget.product.image,
                            fit: BoxFit.fill,
                          )),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

