import 'package:flutter/material.dart';


class OutlineButton extends StatelessWidget {
  final IconData icon;
  Function() press;
  double height ;
  double width ;

  OutlineButton({
    this.height =32,
    this.width=50,
    required this.press,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        onPressed: press,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        child: Icon(icon),
      ),
    );
  }
}