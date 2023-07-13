import 'package:flutter/material.dart';

import 'constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Hand Bag', 'Jewellery', 'Dresses', 'Footwear'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return buildCategory(index);
          },
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
        ),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
    onTap: (){
      setState(() {
        selectedIndex = index ;
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            categories[index],
            style:  TextStyle(
                fontWeight: FontWeight.bold,
                color:selectedIndex == index ? KTextColor : KLiteColor
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: defaultPadding / 4),
            height: 3,
            width: 30,
            color: selectedIndex == index ? Colors.black : Colors.transparent,
          )
        ],
      ),
    ),
  );
}