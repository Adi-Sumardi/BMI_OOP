import 'package:bmi_oop/constants/constant.dart';
import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  const BmiCard({
    Key? key,
    this.child,
    this.borderColor = primaryColor,
  }) : super(key: key);

  final Widget? child;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: borderColor!),
      ),
      margin: const EdgeInsets.all(15),
      child: child,
    );
  }
}