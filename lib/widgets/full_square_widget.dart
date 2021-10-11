import 'package:flutter/material.dart';
import 'package:monumental_habits/custom.dart';
import 'package:sizer/sizer.dart';

class FullSquareWidget extends StatelessWidget {
  const FullSquareWidget({
    Key? key,
    required this.w,
    required this.h,
    required this.fillColor,
  }) : super(key: key);

  final double w;
  final double h;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(1.h),
          color: fillColor),
      child: Center(
        child: ClipPath(
          clipper: MyCustomClipper(),
          child: SizedBox(
            width: w,
            height: h,
          ),
        ),
      ),
    );
  }
}
