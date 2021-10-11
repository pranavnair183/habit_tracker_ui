import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'widgets/habit_tab.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: 8.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 25.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage(Resource.hsHeader),
                            fit: BoxFit.fill),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 1.h),
                              child: ListTile(
                                title: Text(
                                  AppConstant.wefirstmakeourhabits,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  AppConstant.anonymous,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                          color: AppColorData.secondaryTxt),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(8.w, 0, 8.w, 0),
                          child: Text(
                            AppConstant.habits,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        )
                      ] +
                      List.generate(7, (index) {
                        return SizedBox(
                          width: 20.w,
                          height: 10.h,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.h),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 1.sp, 0, 0),
                                  child: Text(
                                    AppConstant.weeks[index],
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            color: AppColorData.secondaryTxt,
                                            fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Text(
                                  (index + 17).toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
            ),
            SizedBox(
              height: 2.h,
            ),
            HabitTab(
              weekBgColor: AppColorData.secondary,
              weekBgColorLight: AppColorData.orangeLight,
              habitName: AppConstant.readabook,
              number: 5,
              weekDays: const [true, true, false, true, true],
            ),
            HabitTab(
              weekBgColor: AppColorData.redFill,
              number: 7,
              weekBgColorLight: AppColorData.redLight,
              habitName: AppConstant.exercise,
              weekDays: const [true, true, false, true, false, false, true],
            ),
            HabitTab(
              weekBgColor: AppColorData.habit3,
              number: 2,
              weekBgColorLight: AppColorData.habit3light,
              habitName: AppConstant.wakeupearly,
              weekDays: const [true, false, true],
            ),
            HabitTab(
              weekBgColor: const Color.fromRGBO(152, 52, 86, 1),
              number: 4,
              weekBgColorLight: AppColorData.habit4Light,
              habitName: AppConstant.walkdog,
              weekDays: const [true, false, true, false],
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
