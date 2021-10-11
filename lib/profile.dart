import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String _selectedItem = 'This week';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 3.h, bottom: 17.h),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.h),
              ),
              color: AppColorData.profileCard,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25.sp,
                          backgroundImage: const AssetImage(Resource.girlIcon),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppConstant.user.name!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  AppConstant.name,
                                  style: Theme.of(context).textTheme.headline6!,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 4.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColorData.profileDropdown,
                            ),
                            borderRadius: BorderRadius.circular(1.h),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 1.w),
                          child: DropdownButton<String>(
                            underline: const SizedBox(),
                            value: _selectedItem,
                            icon: const DecoratedIcon(
                              Icons.keyboard_arrow_down_rounded,
                              color: AppColorData.primaryIcon,
                              shadows: [
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
                            iconSize: 18.sp,
                            elevation: 16,
                            style: Theme.of(context).textTheme.headline5,
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedItem = newValue!;
                              });
                            },
                            items: AppConstant.options
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: Theme.of(context).textTheme.headline6!,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 10.h,
                    color: Theme.of(context).backgroundColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.sp),
                      child: GridView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 0.5.sp,
                            mainAxisSpacing: 0.2.sp,
                            crossAxisCount: 2,
                          ),
                          children: <Widget>[
                            GridTile(
                              child: Container(
                                  color: AppColorData.gridTile,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 1.h),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 1.h),
                                              child: Text(
                                                AppConstant.totalWorkHours,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6!
                                                    .copyWith(
                                                        color: AppColorData
                                                            .secondaryTxt),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.h),
                                              child: Text(
                                                AppConstant.eighteen,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline3!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.7.h),
                                        child: CircleAvatar(
                                            backgroundColor: Theme.of(context)
                                                .backgroundColor,
                                            radius: 13.sp,
                                            child: Icon(
                                              Icons.access_time_filled_rounded,
                                              size: 13.sp,
                                              color: AppColorData.secondaryIcon,
                                            )),
                                      ),
                                    ],
                                  )),
                            ),
                            GridTile(
                              child: Container(
                                  color: AppColorData.gridTile,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 1.h),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 1.h),
                                              child: Text(
                                                AppConstant.taskCompleted,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6!
                                                    .copyWith(
                                                        color: AppColorData
                                                            .secondaryTxt),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.h),
                                              child: Text(
                                                AppConstant.twelve,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline3!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.7.h),
                                        child: CircleAvatar(
                                            backgroundColor:
                                                AppColorData.flagIcon,
                                            radius: 13.sp,
                                            child: SvgPicture.asset(
                                              Resource.flagIcon,
                                              height: 15.sp,
                                            )),
                                      ),
                                    ],
                                  )),
                            ),
                          ]),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(1.h),
                            child: Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 30.sp,
                                  animation: true,
                                  animationDuration: 1200,
                                  lineWidth: 3.sp,
                                  percent: 0.5,
                                  center: Text(
                                    "7",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(fontWeight: FontWeight.w300),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  backgroundColor:
                                      AppColorData.circularPercentBg,
                                  progressColor: AppColorData.primary,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  '06/14',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                          color: AppColorData.secondaryTxt),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1.h),
                            child: Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 30.sp,
                                  animation: true,
                                  animationDuration: 1200,
                                  lineWidth: 3.sp,
                                  percent: 0.05,
                                  center: Text(
                                    "0",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(fontWeight: FontWeight.w300),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  backgroundColor:
                                      AppColorData.circularPercentBg1,
                                  progressColor: AppColorData.circularPercent1,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  '06/15',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                          color: AppColorData.secondaryTxt),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1.h),
                            child: Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 30.sp,
                                  animation: true,
                                  animationDuration: 1200,
                                  lineWidth: 3.sp,
                                  percent: 0.5,
                                  center: Text(
                                    "6",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(fontWeight: FontWeight.w300),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  backgroundColor:
                                      AppColorData.circularPercentBg,
                                  progressColor: AppColorData.primary,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  '06/14',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                          color: AppColorData.secondaryTxt),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1.h),
                            child: Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 30.sp,
                                  animation: true,
                                  animationDuration: 1200,
                                  lineWidth: 3.sp,
                                  percent: 0.45,
                                  center: Text(
                                    "5",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(fontWeight: FontWeight.w300),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  backgroundColor: AppColorData.secondaryTxt,
                                  progressColor: AppColorData.primary,
                                ),
                                SizedBox(
                                  height: 2.5.h,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1.h),
                            child: Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 30.sp,
                                  animation: true,
                                  animationDuration: 1200,
                                  lineWidth: 3.sp,
                                  percent: 0.34,
                                  center: Text(
                                    "4",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(fontWeight: FontWeight.w300),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  backgroundColor:
                                      AppColorData.circularPercentBg,
                                  progressColor: AppColorData.primary,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  '06/16',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                          color: AppColorData.secondaryTxt),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1.h),
                            child: Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 30.sp,
                                  animation: true,
                                  animationDuration: 1200,
                                  lineWidth: 3.sp,
                                  percent: 0.9,
                                  center: Text(
                                    "9",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(fontWeight: FontWeight.w300),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  backgroundColor:
                                      AppColorData.circularPercentBg,
                                  progressColor: AppColorData.primary,
                                ),
                                SizedBox(
                                  height: 2.5.h,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1.h),
                            child: Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 30.sp,
                                  animation: true,
                                  animationDuration: 1200,
                                  lineWidth: 3.sp,
                                  percent: 0.5,
                                  center: Text(
                                    "10",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(fontWeight: FontWeight.w300),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  backgroundColor:
                                      Theme.of(context).backgroundColor,
                                  progressColor: AppColorData.secondary,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  'Today',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                          color: AppColorData.secondaryTxt),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(ViewRouter.yourPosts);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h)),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
                  child: Row(
                    children: [
                      Container(
                          width: 35.sp,
                          height: 35.sp,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(1.h),
                            color: Theme.of(context).backgroundColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.sp),
                            child: Icon(
                              Icons.post_add_rounded,
                              color: AppColorData.secondaryIcon,
                              size: 22.sp,
                            ),
                          )),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Expanded(
                          child: Text(
                        'Your posts',
                        style: Theme.of(context).textTheme.headline4!,
                      )),
                      Padding(
                        padding: EdgeInsets.only(top: 0.5.h),
                        child: DecoratedIcon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppColorData.primaryIcon,
                          size: 18.sp,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.h),
                ),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
                  child: Row(
                    children: [
                      Container(
                          width: 35.sp,
                          height: 35.sp,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(1.h),
                            color: Theme.of(context).backgroundColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.sp),
                            child: SvgPicture.asset(Resource.billIcon),
                          )),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Expanded(
                          child: Text(
                        AppConstant.billingMethods,
                        style: Theme.of(context).textTheme.headline4!,
                      )),
                      Padding(
                        padding: EdgeInsets.only(top: 0.5.h),
                        child: DecoratedIcon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppColorData.primaryIcon,
                          size: 18.sp,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h)),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
                  child: Row(
                    children: [
                      Container(
                          width: 35.sp,
                          height: 35.sp,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(1.h),
                            color: Theme.of(context).backgroundColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.sp),
                            child: SvgPicture.asset(Resource.streakIcon),
                          )),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Expanded(
                          child: Text(
                        AppConstant.longestStreak,
                        style: Theme.of(context).textTheme.headline4!,
                      )),
                      Padding(
                          padding: EdgeInsets.only(top: 0.5.h),
                          child: Wrap(children: [
                            Text(AppConstant.twentyDays,
                                style: Theme.of(context).textTheme.headline4!),
                            Padding(
                              padding: EdgeInsets.only(top: 1.5.sp),
                              child: DecoratedIcon(
                                Icons.arrow_forward_ios_rounded,
                                size: 18.sp,
                                color: AppColorData.primaryIcon,
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
                            ),
                          ])),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
