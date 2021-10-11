import 'package:flutter/material.dart';
import 'full_square_widget.dart';
import 'half_sqaure_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:monumental_habits/utils/utils.dart';

class WeekSlider extends StatefulWidget {
  const WeekSlider({
    Key? key,
  }) : super(key: key);

  @override
  _WeekSliderState createState() => _WeekSliderState();
}

class _WeekSliderState extends State<WeekSlider> {
  List<bool> weekDays = [false, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.1.h),
      child: GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 0.8.sp,
            mainAxisSpacing: 1.sp,
            crossAxisCount: 7,
            childAspectRatio: 1 / 5,
          ),
          children: List.generate(7, (index) {
            return GridTile(
              child: InkWell(
                onTap: () {
                  setState(() {
                    weekDays[index] = !weekDays[index];
                  });
                },
                child: Container(
                  color: (weekDays[index] == false)
                      ? AppColorData.weekTab
                      : AppColorData.squareEmpty,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        AppConstant.weeks[index],
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: AppColorData.secondaryTxt),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                          child: (index == 2 || index == 5 || index == 1)
                              ? FullSquareWidget(
                                  h: 20.sp,
                                  w: 20.sp,
                                  fillColor: AppColorData.secondary,
                                )
                              : HalfSquareWidget(
                                  w: 20.sp,
                                  h: 20.sp,
                                  fillColor: AppColorData.secondary,
                                  emptyColor:
                                      Theme.of(context).backgroundColor)),
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
