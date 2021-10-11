import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../custom.dart';
import 'package:sizer/sizer.dart';

import 'package:monumental_habits/utils/utils.dart';

class HabitTab extends StatelessWidget {
  const HabitTab({
    Key? key,
    required this.habitName,
    required this.weekBgColor,
    required this.weekBgColorLight,
    required this.weekDays,
    required this.number,
  }) : super(key: key);

  final String habitName;
  final Color weekBgColor;
  final Color weekBgColorLight;
  final List<bool> weekDays;
  final int number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ViewRouter.habitDetails);
      },
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.5.h),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColorData.habitTab,
                borderRadius: BorderRadius.circular(1.h)),
            child: Container(
              padding: EdgeInsets.all(5.sp),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: IntrinsicHeight(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                            Container(
                              padding: EdgeInsets.only(left: 5.sp),
                              child: Text(
                                habitName,
                                style: TextStyle(
                                    color: AppColorData.primary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp),
                              ),
                            ),
                            VerticalDivider(
                              width: 10.sp,
                            ),
                          ] +
                          List.generate(number, (index) {
                            return (weekDays[index] == true)
                                ? Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.sp),
                                    child: Container(
                                      width: 35.sp,
                                      height: 35.sp,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(1.h),
                                          color: weekBgColor),
                                      child: Center(
                                        child: ClipPath(
                                          clipper: MyCustomClipper(),
                                          child: const SizedBox(
                                            width: 35,
                                            height: 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.sp),
                                    child: Container(
                                      width: 35.sp,
                                      height: 35.sp,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(1.h),
                                          color: weekBgColorLight),
                                      child: Center(
                                        child: ClipPath(
                                          clipper: MyCustomClipper(),
                                          child: Container(
                                            width: 35.sp,
                                            height: 35.sp,
                                            decoration: BoxDecoration(
                                              color: weekBgColor,
                                              borderRadius:
                                                  BorderRadius.circular(1.h),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                          })),
                ),
              ),
            ),
          )),
    );
  }
}
