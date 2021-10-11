import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 17.h, top: 1.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    right: 6.w, left: 6.w, top: 1.h, bottom: 2.h),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 25.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.h),
                          image: const DecorationImage(
                              image: AssetImage(Resource.settingsHeader),
                              fit: BoxFit.fill),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.w, vertical: 4.h),
                          child: Row(children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppConstant.checkYourProfile,
                                    style:
                                        Theme.of(context).textTheme.headline1!,
                                  ),
                                  Text(
                                    AppConstant.emailId,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            color: AppColorData.secondaryTxt),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                    width: 25.w,
                                    child: ElevatedButton(
                                      style: Theme.of(context)
                                          .elevatedButtonTheme
                                          .style!
                                          .copyWith(
                                              padding: MaterialStateProperty
                                                  .resolveWith((states) =>
                                                      const EdgeInsets
                                                              .symmetric(
                                                          vertical: 0))),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, ViewRouter.pricing);
                                      },
                                      child: Text(AppConstant.view,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5!),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 30.sp),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.sp),
                    child: Text(
                      AppConstant.general,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 6.w),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  elevation: 0,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
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
                          child: Icon(
                            Icons.circle_notifications_sharp,
                            color: AppColorData.secondaryIcon,
                            size: 25.sp,
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppConstant.notification,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                AppConstant.customizeNotifications,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: AppColorData.secondaryTxt),
                              ),
                            ],
                          ),
                        ),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 6.w),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.h)),
                  elevation: 0,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
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
                          child: Icon(
                            Icons.more_horiz_outlined,
                            color: AppColorData.secondaryIcon,
                            size: 25.sp,
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppConstant.moreCustomization,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                AppConstant.customizeItMore,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: AppColorData.secondaryTxt),
                              ),
                            ],
                          ),
                        ),
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
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 30.sp),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.sp, top: 10.sp),
                    child: Text(
                      AppConstant.support,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.sp, horizontal: 6.w),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  elevation: 0,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
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
                              child: SvgPicture.asset(Resource.contactIcon),
                            )),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Expanded(
                            child: Text(
                          AppConstant.contact,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(fontWeight: FontWeight.w500),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 6.w),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  elevation: 0,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
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
                              child: SvgPicture.asset(Resource.feedbackIcon),
                            )),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Expanded(
                            child: Text(
                          AppConstant.feedback,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(fontWeight: FontWeight.w500),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 6.w),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  elevation: 0,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
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
                              child: SvgPicture.asset(Resource.privacyIcon),
                            )),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Expanded(
                            child: Text(
                          AppConstant.privacyPolicy,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(fontWeight: FontWeight.w500),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 6.w),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  elevation: 0,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
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
                          child: Icon(
                            Icons.error,
                            color: AppColorData.secondaryIcon,
                            size: 25.sp,
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Expanded(
                            child: Text(
                          AppConstant.about,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(fontWeight: FontWeight.w500),
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
            ],
          ),
        ),
      ),
    );
  }
}
