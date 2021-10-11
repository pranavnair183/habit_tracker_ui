import 'package:flutter/material.dart';
import 'package:monumental_habits/utils/utils.dart';
import 'package:sizer/sizer.dart';

class EmptySquareWidget extends StatelessWidget {
  const EmptySquareWidget({
    Key? key,
    required this.w,
    required this.h,
  }) : super(key: key);

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(1.h),
          color: AppColorData.squareEmpty),
    );
  }
}
