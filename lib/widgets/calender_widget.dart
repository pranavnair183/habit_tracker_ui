import 'package:flutter/material.dart';
import 'package:monumental_habits/utils/utils.dart';
import 'package:table_calendar/table_calendar.dart';
import 'half_sqaure_widget.dart';
import 'package:intl/intl.dart';
import 'package:decorated_icon/decorated_icon.dart';
import './full_square_widget.dart';
import 'package:sizer/sizer.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({
    Key? key,
    required this.months,
  }) : super(key: key);

  final List<String> months;

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  late final PageController _pageController;
  final ValueNotifier<DateTime> _focusedDay =
      ValueNotifier(DateTime.parse("2021-01-01 13:27:00"));

  @override
  void dispose() {
    _focusedDay.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.5.h),
        ),
        child: Column(children: [
          ValueListenableBuilder<DateTime>(
            valueListenable: _focusedDay,
            builder: (context, value, _) {
              return _CalendarHeader(
                focusedDay: value,
                onLeftArrowTap: () {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                },
                onRightArrowTap: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
            child: TableCalendar(
              daysOfWeekHeight: 4.h,
              availableGestures: AvailableGestures.none,
              onCalendarCreated: (controller) => _pageController = controller,
              rowHeight: 11.h,
              headerVisible: false,
              calendarFormat: CalendarFormat.month,
              onPageChanged: (focusedDay) => _focusedDay.value = focusedDay,
              calendarBuilders: CalendarBuilders(
                headerTitleBuilder: (BuildContext context, day) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.months[day.month],
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  );
                },
                outsideBuilder: (BuildContext context, day, _) {
                  return Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.circular(1.h)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              day.day.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: AppColorData.secondaryTxt),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 7.sp),
                              child: FullSquareWidget(
                                w: 20.sp,
                                h: 20.sp,
                                fillColor: AppColorData.squareEmpty,
                              ),
                            )
                          ]),
                    ),
                  );
                },
                todayBuilder: (BuildContext context, _, day) {
                  return Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              day.day.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 7.sp),
                              child: HalfSquareWidget(
                                w: 20.sp,
                                h: 20.sp,
                                fillColor: AppColorData.squareFill,
                                emptyColor: AppColorData.squareEmpty,
                              ),
                            )
                          ]),
                    ),
                  );
                },
                defaultBuilder: (BuildContext context, day, _) {
                  return Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              day.day.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 7.sp),
                              child: HalfSquareWidget(
                                w: 20.sp,
                                h: 20.sp,
                                fillColor: AppColorData.squareFill,
                                emptyColor: AppColorData.squareEmpty,
                              ),
                            )
                          ]),
                    ),
                  );
                },
              ),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
          ),
        ]));
  }
}

class _CalendarHeader extends StatelessWidget {
  final DateTime focusedDay;
  final VoidCallback onLeftArrowTap;
  final VoidCallback onRightArrowTap;

  const _CalendarHeader({
    Key? key,
    required this.focusedDay,
    required this.onLeftArrowTap,
    required this.onRightArrowTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerText = DateFormat.MMMM().format(focusedDay);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: DecoratedIcon(
              Icons.arrow_back_ios_rounded,
              size: 12.sp,
              color: AppColorData.primaryIcon,
              shadows: const [
                BoxShadow(
                  blurRadius: 42.0,
                  color: AppColorData.primaryIcon,
                ),
                BoxShadow(
                  blurRadius: 12.0,
                  color: AppColorData.primaryIcon,
                ),
              ],
            ),
            onPressed: onLeftArrowTap,
          ),
          Expanded(
            child: Text(
              headerText,
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            icon: DecoratedIcon(
              Icons.arrow_forward_ios_rounded,
              color: AppColorData.primaryIcon,
              size: 12.sp,
              shadows: [
                BoxShadow(
                  blurRadius: 42.sp,
                  color: AppColorData.primaryIcon,
                ),
                BoxShadow(
                  blurRadius: 12.sp,
                  color: AppColorData.primaryIcon,
                ),
              ],
            ),
            onPressed: onRightArrowTap,
          ),
        ],
      ),
    );
  }
}
