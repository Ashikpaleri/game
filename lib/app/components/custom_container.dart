import 'package:armgames/constants.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget ? child;
  CustomContainer({this.child});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      child: Row(
        children: [
          Container(

            height: 30,
            width: 60,
            decoration: BoxDecoration(
                color: dark3Color,
                borderRadius: BorderRadius.circular(15)),
            child: child,
          ),


        ],
      ),
    );
  }
}
