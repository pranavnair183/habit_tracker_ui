import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import 'package:monumental_habits/utils/utils.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({Key? key}) : super(key: key);

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  bool? isAm = true;
  FixedExtentScrollController? _controller1;
  FixedExtentScrollController? _controller2;
  int? selectedHour;
  int? selectedMinute;

  @override
  void initState() {
    super.initState();
    selectedHour = 8;
    selectedMinute = 0;
    _controller1 = FixedExtentScrollController(initialItem: selectedHour!);
    _controller2 = FixedExtentScrollController(initialItem: selectedMinute!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.all(1.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.sp),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    AppConstant.cancel,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: AppColorData.secondary),
                  )),
            ),
            Expanded(
              child: Text(
                AppConstant.addReminder,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.sp),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  AppConstant.save,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: AppColorData.secondary),
                ),
              ),
            ),
          ],
        ),
      ),
      const Divider(),
      Expanded(
        child: Center(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Expanded(
                          child: SizedBox(
                        height: 22.h,
                        child: ListWheelScrollView.useDelegate(
                          itemExtent: 30.sp,
                          squeeze: 1,
                          offAxisFraction: -1.5,
                          diameterRatio: 3,
                          controller: _controller1,
                          onSelectedItemChanged: (value) {
                            setState(() {
                              selectedHour = value;
                            });
                          },
                          childDelegate: ListWheelChildLoopingListDelegate(
                              children: List.generate(
                                  12,
                                  (index) => Text(
                                        ((index < 9)
                                                ? "0" + (index + 1).toString()
                                                : (index + 1))
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: (index == selectedHour)
                                                    ? AppColorData.timeSelected
                                                    : AppColorData.secondaryTxt,
                                                fontSize:
                                                    (index == selectedHour)
                                                        ? 25.sp
                                                        : 14.sp),
                                      ))),
                        ),
                      )),
                      Image.asset(
                        Resource.colon,
                        width: 30.sp,
                        height: 30.sp,
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 22.h,
                        child: ListWheelScrollView.useDelegate(
                          itemExtent: 30.sp,
                          squeeze: 1,
                          offAxisFraction: -1.5,
                          diameterRatio: 3,
                          controller: _controller2,
                          onSelectedItemChanged: (value) {
                            setState(() {
                              selectedMinute = value;
                            });
                          },
                          childDelegate: ListWheelChildLoopingListDelegate(
                              children: List.generate(
                                  59,
                                  (index) => Text(
                                        ((index < 9)
                                                ? "0" + (index).toString()
                                                : (index + 1))
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: (index == selectedMinute)
                                                  ? AppColorData.timeSelected
                                                  : AppColorData.secondaryTxt,
                                              fontSize:
                                                  (index == selectedMinute)
                                                      ? 25.sp
                                                      : 14.sp,
                                            ),
                                      ))),
                        ),
                      )),
                      const Spacer()
                    ]))),
      ),
      Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              setState(() {
                isAm = !isAm!;
              });
            },
            child: Container(
              padding: EdgeInsets.all(3.h),
              color: (isAm == true)
                  ? AppColorData.amPmActiveBg
                  : AppColorData.amPmDisabledBg,
              child: Center(
                child: Text(
                  AppConstant.am,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: (isAm == true)
                          ? AppColorData.amPmActiveTxt
                          : AppColorData.amPmDisabledTxt),
                ),
              ),
            ),
          )),
          Expanded(
              child: InkWell(
            onTap: () {
              setState(() {
                isAm = !isAm!;
              });
            },
            child: Container(
              padding: EdgeInsets.all(3.h),
              color: (isAm == false)
                  ? AppColorData.amPmActiveBg
                  : AppColorData.amPmDisabledBg,
              child: Center(
                child: Text(
                  AppConstant.pm,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: (isAm == false)
                            ? AppColorData.amPmActiveTxt
                            : AppColorData.amPmDisabledTxt,
                      ),
                ),
              ),
            ),
          )),
        ],
      )
    ]);
  }
}
