import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  bool isBookMarked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(5.w, 3.h, 5.w, 1.5.h),
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.h),
                      image: const DecorationImage(
                          colorFilter: ColorFilter.mode(
                              AppColorData.coursePreviewShade,
                              BlendMode.darken),
                          image: AssetImage(Resource.course1),
                          fit: BoxFit.fill)),
                  height: 30.h,
                  width: 100.w,
                  child: Icon(
                    Icons.play_circle_outline_outlined,
                    color: AppColorData.playButton,
                    size: 70.sp,
                  ),
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 1.h),
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.5.h)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(2.w, 1.h, 2.w, 1.h),
                          child: Row(children: [
                            Expanded(
                              child: Text(AppConstant.courseTitle,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontSize: 16.sp)),
                            ),
                          ]),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        ListTile(
                          visualDensity: const VisualDensity(vertical: -4),
                          title: Text(
                            AppConstant.thirtySevenLessons,
                            style: Theme.of(context).textTheme.headline4!,
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 3.w),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(ViewRouter.videoPlayer);
                                },
                                child: Container(
                                  width: 11.w, //40.sp,
                                  height: 11.w, //40.sp,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(1.h),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: Icon(
                                    Icons.play_arrow_rounded,
                                    size: 26.sp,
                                    color: AppColorData.secondary,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Expanded(
                                child: Text(
                                  AppConstant.introduction,
                                  style: Theme.of(context).textTheme.headline4!,
                                ),
                              ),
                              Text(
                                AppConstant.cdtime,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: AppColorData.secondaryTxt),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 3.w),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(ViewRouter.videoPlayer);
                                },
                                child: Container(
                                  width: 11.w,
                                  height: 11.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(1.h),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: Icon(
                                    Icons.lock,
                                    size: 26.sp,
                                    color: AppColorData.secondaryIcon,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Expanded(
                                child: Text(
                                  AppConstant.adoptingPrompts,
                                  style: Theme.of(context).textTheme.headline4!,
                                ),
                              ),
                              Text(
                                AppConstant.cdtime,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: AppColorData.secondaryTxt),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 3.w),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(ViewRouter.videoPlayer);
                                },
                                child: Container(
                                  width: 13.w,
                                  height: 13.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(1.h),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: Icon(
                                    Icons.lock,
                                    size: 26.sp,
                                    color: AppColorData.secondaryIcon,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Expanded(
                                child: Text(
                                  AppConstant.choosingANotebook,
                                  style: Theme.of(context).textTheme.headline4!,
                                ),
                              ),
                              Text(
                                AppConstant.cdtime,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: AppColorData.secondaryTxt),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 3.w),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(ViewRouter.videoPlayer);
                                },
                                child: Container(
                                  width: 13.w,
                                  height: 13.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(1.h),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: Icon(
                                    Icons.lock,
                                    size: 26.sp,
                                    color: AppColorData.secondaryIcon,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Expanded(
                                child: Text(
                                  AppConstant.optionalSupplies,
                                  style: Theme.of(context).textTheme.headline4!,
                                ),
                              ),
                              Text(
                                AppConstant.cdtime,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: AppColorData.secondaryTxt),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 3.w),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(ViewRouter.videoPlayer);
                                },
                                child: Container(
                                  width: 13.w,
                                  height: 13.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(1.h),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: Icon(
                                    Icons.lock,
                                    size: 26.sp,
                                    color: AppColorData.secondaryIcon,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Expanded(
                                child: Text(
                                  AppConstant.dayOne,
                                  style: Theme.of(context).textTheme.headline4!,
                                ),
                              ),
                              Text(
                                AppConstant.cdtime,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: AppColorData.secondaryTxt),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 9.h,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
