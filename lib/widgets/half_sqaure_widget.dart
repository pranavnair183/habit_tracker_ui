import 'package:flutter/material.dart';
import 'package:monumental_habits/custom.dart';
import 'package:sizer/sizer.dart';

class HalfSquareWidget extends StatelessWidget {
  const HalfSquareWidget({
    Key? key,
    required this.w,
    required this.h,
    required this.fillColor,
    required this.emptyColor,
  }) : super(key: key);

  final double w;
  final double h;
  final Color fillColor;
  final Color emptyColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5.sp),
          color: emptyColor),
      child: Center(
        child: ClipPath(
          clipper: MyCustomClipper(),
          child: Container(
            width: w,
            height: h,
            decoration: BoxDecoration(
                color: fillColor, borderRadius: BorderRadius.circular(5.sp)),
          ),
        ),
      ),
    );
  }
}
