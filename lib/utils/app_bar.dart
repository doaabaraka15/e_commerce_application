import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

AppBar buildAppBar(Color color, BuildContext context) {
  return AppBar(
    backgroundColor: color,
    elevation: 0,
    leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg",color: Colors.white,),onPressed: ()=>Navigator.pop(context),),
    actions: [
      IconButton(onPressed: (){}, icon:  SvgPicture.asset("assets/icons/search.svg")),
      IconButton(onPressed: (){}, icon:  SvgPicture.asset("assets/icons/cart.svg")),
      const SizedBox(width: defaultPadding/2,)
    ],
  );
}