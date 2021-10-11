import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:monumental_habits/widgets/reminder.dart';
import 'widgets/week_slider.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class NewHabit extends StatefulWidget {
  const NewHabit({Key? key}) : super(key: key);

  @override
  _NewHabitState createState() => _NewHabitState();
}

class _NewHabitState extends State<NewHabit> {
  int initialHfreq = 4;
  TimeOfDay? _time;
  bool bmAdded = false;
  List<bool> values = List.filled(7, false);
  bool isNotified = false;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Form(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(1.h),
                      child: TextFormField(
                        style: Theme.of(context).textTheme.headline4!,
                        decoration: InputDecoration(
                          hintText: AppConstant.enterhabitname,
                          fillColor: AppColorData.textField,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 3.w, vertical: 2.h),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(1.h)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(1.h)),
                        ),
                      ),
                    ),
                  ),
                  ButtonTheme(
                      buttonColor: AppColorData.tabColor,
                      child: Stack(children: [
                        SizedBox(
                          height: 7.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: AppColorData.tabColor,
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1.h),
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.sp, horizontal: 1.w),
                              child: SvgPicture.asset(
                                Resource.bookmarkIcon,
                                height: 28.sp,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                bmAdded = !bmAdded;
                              });
                            },
                          ),
                        ),
                        Positioned(
                            right: 1.sp,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.add,
                                color: AppColorData.tabColor,
                                size: 13.sp,
                              ),
                              radius: 7.sp,
                              backgroundColor: AppColorData.secondary,
                            ))
                      ])),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0),
              child: Card(
                color: AppColorData.tabColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h)),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Row(
                      children: [
                        Text(
                          AppConstant.habitfrequency,
                          style: Theme.of(context).textTheme.headline4!,
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            showDialog<void>(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text(AppConstant.habitfrequency,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 3.w, vertical: 2.h),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          for (var key
                                              in AppConstant.hFreq.keys)
                                            ListTile(
                                              contentPadding:
                                                  EdgeInsets.all(1.h),
                                              title: Text(
                                                AppConstant.hFreq[key]!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline4,
                                              ),
                                              leading: Radio(
                                                toggleable: true,
                                                value: key,
                                                groupValue: 1,
                                                onChanged: (_) {
                                                  setState(() {
                                                    initialHfreq = key;
                                                  });
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            )
                                        ],
                                      ),
                                    ));
                          },
                          child: Wrap(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 1.5.h, 0, 10),
                                child: Text(
                                  AppConstant.hFreq[initialHfreq]!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(color: AppColorData.secondary),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 1.9.h),
                                child: DecoratedIcon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: AppColorData.secondaryIcon,
                                  size: 15.sp,
                                  shadows: const [
                                    BoxShadow(
                                      blurRadius: 42.0,
                                      color: AppColorData.secondaryIcon,
                                    ),
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: AppColorData.secondaryIcon,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  if (initialHfreq == 4)
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(1.h),
                        bottomRight: Radius.circular(1.h),
                      ),
                      child: Container(
                        child: const WeekSlider(),
                        color: Theme.of(context).backgroundColor,
                        height: 10.h,
                      ),
                    ),
                ]),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.4.h),
                child: Card(
                  color: AppColorData.tabColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
                    child: Row(
                      children: [
                        Text(
                          AppConstant.remainder,
                          style: Theme.of(context).textTheme.headline4!,
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                builder: (BuildContext context) {
                                  return const ReminderSheet();
                                });
                          },
                          child: Wrap(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 1.5.h, 0, 10),
                                child: Text(
                                  (_time != null)
                                      ? "${_time!.hour}:${_time!.minute}"
                                      : AppConstant.select,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(color: AppColorData.secondary),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 1.9.h),
                                child: DecoratedIcon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: AppColorData.secondaryIcon,
                                  size: 15.sp,
                                  shadows: const [
                                    BoxShadow(
                                      blurRadius: 42.0,
                                      color: AppColorData.secondaryIcon,
                                    ),
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: AppColorData.secondaryIcon,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.sp),
                child: Card(
                  color: AppColorData.tabColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                    child: Row(
                      children: [
                        Text(
                          AppConstant.notification,
                          style: Theme.of(context).textTheme.headline4!,
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 4.h,
                          width: 15.w,
                          child: FlutterSwitch(
                            value: isSwitched,
                            showOnOff: true,
                            valueFontSize: 8.sp,
                            activeTextColor: AppColorData.secondary,
                            inactiveTextColor: AppColorData.primary,
                            activeToggleColor: AppColorData.secondaryIcon,
                            inactiveToggleColor: AppColorData.primary,
                            activeColor: AppColorData.switchActive,
                            inactiveColor: AppColorData.switchInactive,
                            onToggle: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
                child: Image.asset(
              Resource.nhFooter,
              height: 10.h,
            )),
            const SizedBox(
              height: 35,
            )
          ],
        )),
      ),
    ]);
  }
}
