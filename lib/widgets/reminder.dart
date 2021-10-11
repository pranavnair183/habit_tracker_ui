import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monumental_habits/widgets/time_picker.dart';
import 'package:sizer/sizer.dart';

import 'package:monumental_habits/utils/utils.dart';

class ReminderSheet extends StatefulWidget {
  const ReminderSheet({Key? key}) : super(key: key);

  @override
  _ReminderSheetState createState() => _ReminderSheetState();
}

class _ReminderSheetState extends State<ReminderSheet> {
  List bools = [true, false, true, false, false, true, false, true, true];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: AppConstant.time.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(2.sp),
                  decoration: BoxDecoration(
                    color: (bools[index] == true)
                        ? AppColorData.squareEmpty
                        : const Color.fromRGBO(200, 193, 200, 1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(2.5.h),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        child: Text(AppConstant.time[index],
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                                    color: (bools[index] == true)
                                        ? AppColorData.timeTxt
                                        : AppColorData.primary,
                                    fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      FlutterSwitch(
                        width: 15.w,
                        height: 4.h,
                        value: bools[index],
                        showOnOff: true,
                        valueFontSize: 8.sp,
                        activeTextColor: AppColorData.secondary,
                        inactiveTextColor: AppColorData.primary,
                        activeToggleColor: AppColorData.secondary,
                        inactiveToggleColor: AppColorData.primary,
                        activeColor: AppColorData.switchActive,
                        inactiveColor: const Color.fromRGBO(154, 143, 150, 1),
                        onToggle: (value) {
                          setState(() {
                            bools[index] = value;
                          });
                        },
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.5.h),
                          ),
                          builder: (BuildContext context) {
                            return const TimePicker();
                          });
                    },
                    child: Padding(
                      padding: EdgeInsets.all(1.h),
                      child: Text(
                        AppConstant.addReminder,
                        style: TextStyle(
                            color: AppColorData.primary, fontSize: 13.sp),
                      ),
                    ),
                    style: Theme.of(context).elevatedButtonTheme.style,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 15.sp, 0),
                child: Container(
                  height: 7.h,
                  width: 13.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: AppColorData.squareEmpty,
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      Resource.alarmIcon,
                      height: 20.sp,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
