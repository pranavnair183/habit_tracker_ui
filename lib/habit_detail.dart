import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/calender_widget.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class HabitDetailScreen extends StatefulWidget {
  const HabitDetailScreen({Key? key}) : super(key: key);

  @override
  _HabitDetailScreenState createState() => _HabitDetailScreenState();
}

class _HabitDetailScreenState extends State<HabitDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(bottom: 3.1.h),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColorData.habitDetailHeader,
                      borderRadius: BorderRadius.circular(2.h)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(2.w, 1.h, 0, 1.h),
                        child: Image.asset(
                          Resource.hdHeader,
                          height: 15.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(0.8.h),
                              child: Text(
                                AppConstant.readabook,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Wrap(
                              children: [
                                Icon(
                                  Icons.notifications_none_outlined,
                                  color: AppColorData.secondaryIcon,
                                  size: 15.sp,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(1.w, 0.5.h, 0, 0),
                                  child: Text(
                                    AppConstant.repeateveryday,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            color: AppColorData.secondaryTxt),
                                  ),
                                )
                              ],
                            ),
                            Wrap(
                              children: [
                                Icon(
                                  Icons.loop_sharp,
                                  color: AppColorData.secondaryIcon,
                                  size: 15.sp,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(1.w, 0.5.h, 0, 0),
                                  child: Text(
                                    AppConstant.remiders5am,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            color: AppColorData.secondaryTxt),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
              child: const CustomCalendar(months: AppConstant.months),
            ),
            Padding(
              padding: EdgeInsets.all(1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppConstant.analytics,
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: AppColorData.secondaryTxt,
                          fontWeight: FontWeight.w400))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 6.w),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColorData.habitDetailGrid,
                  borderRadius: BorderRadius.circular(2.h),
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(AppConstant.twentydays,
                                    style:
                                        Theme.of(context).textTheme.headline3!),
                                Text(
                                  AppConstant.largeststreak,
                                  style: Theme.of(context).textTheme.headline6!,
                                ),
                              ],
                            ),
                            CircleAvatar(
                                backgroundColor: AppColorData.fireIcon,
                                radius: 17.sp,
                                child: SvgPicture.asset(
                                  Resource.fireIcon,
                                  height: 3.h,
                                )),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppConstant.zerodays,
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                Text(
                                  AppConstant.currentstreak,
                                  style: Theme.of(context).textTheme.headline6!,
                                ),
                              ],
                            ),
                            CircleAvatar(
                                backgroundColor: Colors.red[100],
                                radius: 17.sp,
                                child: Icon(Icons.flash_on_outlined,
                                    size: 20.sp,
                                    color: AppColorData.flashIcon)),
                          ],
                        ),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppConstant.ninetyeight,
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                Text(
                                  AppConstant.completionrate,
                                  style: Theme.of(context).textTheme.headline6!,
                                ),
                              ],
                            ),
                            CircleAvatar(
                                backgroundColor: AppColorData.barIcon,
                                radius: 17.sp,
                                child: SvgPicture.asset(
                                  Resource.barIcon,
                                  height: 3.h,
                                )),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppConstant.seven,
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  ),
                                  Text(
                                    AppConstant.avgEasinessScore,
                                    style:
                                        Theme.of(context).textTheme.headline6!,
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                                backgroundColor: Colors.purple[100],
                                radius: 17.sp,
                                child: SvgPicture.asset(
                                  Resource.leafIcon,
                                  height: 3.h,
                                )),
                          ],
                        ),
                      )),
                    ],
                  ),
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 7.w, right: 7.w, top: 2.5.h, bottom: 1.2.h),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 7.h,
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (BuildContext context) {
                                return Stack(children: [
                                  Container(
                                    height: 55.h,
                                    decoration: BoxDecoration(
                                        color: AppColorData.congoSheetBg,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(2.h)),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 10.sp,
                                              color: Colors.transparent,
                                              spreadRadius: 5.sp)
                                        ]),
                                    margin: EdgeInsets.only(
                                        top: 1.h,
                                        left: 6.w,
                                        right: 6.w,
                                        bottom: 1.h),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 3,
                                            child: Image.asset(
                                              Resource.congoHeader,
                                              height: 10.h,
                                              fit: BoxFit.fill,
                                            )),
                                        Row(children: [
                                          Expanded(
                                              child: Text(
                                            AppConstant.congratulationsCapital,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3!,
                                            textAlign: TextAlign.center,
                                          )),
                                        ]),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(AppConstant.random,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6!
                                                        .copyWith(
                                                            color: AppColorData
                                                                .secondaryTxt),
                                                    textAlign:
                                                        TextAlign.center)),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Column(children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6.w, vertical: 1.h),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: SizedBox(
                                                    height: 6.h,
                                                    child: ElevatedButton(
                                                      style: Theme.of(context)
                                                          .elevatedButtonTheme
                                                          .style,
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pushReplacementNamed(
                                                                ViewRouter
                                                                    .newHabit);
                                                      },
                                                      child: Text(
                                                        AppConstant
                                                            .createANewHabit,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline6!
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6.w, vertical: 1.h),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: SizedBox(
                                                    height: 6.h,
                                                    child: ElevatedButton(
                                                      style: ButtonStyle(
                                                        backgroundColor: MaterialStateColor
                                                            .resolveWith((states) =>
                                                                Theme.of(
                                                                        context)
                                                                    .backgroundColor),
                                                        shape:
                                                            MaterialStateProperty
                                                                .resolveWith(
                                                          (states) =>
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              0.5.h,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text(
                                                        AppConstant.continueTxt,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline6!
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ])
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 10.w,
                                    top: 3.h,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Icon(Icons.close,
                                          size: 15.sp,
                                          color: AppColorData.primaryIcon),
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        primary:
                                            AppColorData.appBarButtonsPrimary,
                                        onPrimary:
                                            AppColorData.appBarButtonsPrimary,
                                        shadowColor:
                                            AppColorData.appBarButtonsShadow,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 2.w),
                                      ),
                                    ),
                                  ),
                                ]);
                              });
                        },
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: Text(
                          AppConstant.markHabitAsComplete,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(7.w, 1.h, 7.w, 15.h),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 7.h,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) =>
                                    AppColorData.markHabitAsMissedButton),
                            elevation: MaterialStateProperty.resolveWith(
                                (states) => 1),
                            shape: MaterialStateProperty.resolveWith((states) =>
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10.0)))),
                        onPressed: () {},
                        child: Text(AppConstant.markHabitAsMissed,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
