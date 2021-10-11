import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class Pricing extends StatefulWidget {
  const Pricing({Key? key}) : super(key: key);

  @override
  _PricingState createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#fff3e9"),
      appBar: AppBar(
        toolbarHeight: 45.sp,
        leadingWidth: 70.sp,
        leading: Padding(
          padding: EdgeInsets.only(bottom: 2.1.h, top: 1.5.h),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Theme.of(context).iconTheme.color,
              size: 15.sp,
            ),
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary: AppColorData.appBarButtonsPrimary,
                onPrimary: AppColorData.appBarButtonsPrimary,
                shadowColor: AppColorData.appBarButtonsShadow,
                padding: EdgeInsets.all(1.h)),
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColorData.primary),
        backgroundColor: AppColorData.appBar,
        elevation: 0,
        title: Text(
          AppConstant.premium,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(6.w, 2.h, 6.w, 0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 24.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.h),
                            image: const DecorationImage(
                                image: AssetImage(Resource.prmHeader),
                                fit: BoxFit.fill),
                            color: AppColorData.priceCard),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 2.h),
                          child: Row(children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppConstant.sixtyPercentOff,
                                    style:
                                        Theme.of(context).textTheme.headline3!,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(0, 1.h, 0, 2.h),
                                    child: Text(
                                      AppConstant.expiresIn,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                              color: AppColorData.secondaryTxt,
                                              fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 30.sp,
                                        height: 30.sp,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: AppColorData.premiumTimer,
                                          borderRadius:
                                              BorderRadius.circular(1.h),
                                        ),
                                        child: Center(
                                            child: Text(
                                          AppConstant.twentyThree,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                      Image(
                                        image: const AssetImage(Resource.colon),
                                        height: 20.sp,
                                      ),
                                      Container(
                                        width: 30.sp,
                                        height: 30.sp,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: AppColorData.premiumTimer,
                                          borderRadius:
                                              BorderRadius.circular(1.h),
                                        ),
                                        child: Center(
                                            child: Text(
                                          AppConstant.fiftySix,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                      Image(
                                        image: const AssetImage(Resource.colon),
                                        height: 20.sp,
                                      ),
                                      Container(
                                        width: 30.sp,
                                        height: 30.sp,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: AppColorData.premiumTimer,
                                          borderRadius:
                                              BorderRadius.circular(1.h),
                                        ),
                                        child: Center(
                                            child: Text(
                                          AppConstant.fortyEight,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                    ],
                                  ),
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
              Card(
                color: AppColorData.priceCard,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.h),
                ),
                child: Padding(
                  padding: EdgeInsets.all(5.sp),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0.5.h),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                AppConstant.unlockMonumental,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColorData.secondary,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(1.h),
                                  child: SvgPicture.asset(
                                    Resource.doneIcon2,
                                    height: 1.5.h,
                                  )),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                                child: Text(
                              AppConstant.unlimitedHabits,
                              style: Theme.of(context).textTheme.headline5,
                            )),
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColorData.secondary,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(1.h),
                                  child: SvgPicture.asset(
                                    Resource.doneIcon2,
                                    height: 1.5.h,
                                  )),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                                child: Text(
                              AppConstant.accessToAllCourses,
                              style: Theme.of(context).textTheme.headline5,
                            )),
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColorData.secondary,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(1.h),
                                  child: SvgPicture.asset(
                                    Resource.doneIcon2,
                                    height: 1.5.h,
                                  )),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                                child: Text(
                              AppConstant.accessToAllAvatar,
                              style: Theme.of(context).textTheme.headline5,
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColorData.priceCard),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 2.w),
                                child: Column(children: [
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Text(
                                    AppConstant.nineteen,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            color: AppColorData.secondary),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(1.h),
                                    child: Text(
                                      AppConstant.sixMonthPlan,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: AppColorData.secondaryTxt,
                                          fontSize: 11.sp),
                                    ),
                                  ),
                                ]),
                              ),
                              const Divider(),
                              Container(
                                padding: EdgeInsets.all(1.h),
                                child: Text(
                                  AppConstant.monthly,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.h),
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColorData.secondary,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(2.h),
                                  topLeft: Radius.circular(2.h),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(1.3.h),
                                        child: Text(
                                          AppConstant.mostPopular,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Text(
                              AppConstant.twentyNine,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(color: AppColorData.secondary),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 1.h),
                              child: Text(
                                AppConstant.sixMonthPlan,
                                style: TextStyle(
                                    color: AppColorData.secondaryTxt,
                                    fontSize: 10.sp),
                              ),
                            ),
                            const Divider(),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 1.h),
                              child: Text(
                                AppConstant.yearly,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              color: AppColorData.priceCard),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 2.w),
                                child: Column(children: [
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Text(
                                    AppConstant.fortyNine,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            color: AppColorData.secondary),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(1.h),
                                    child: Text(
                                      AppConstant.sixMonthPlan,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: AppColorData.secondaryTxt,
                                          fontSize: 11.sp),
                                    ),
                                  ),
                                ]),
                              ),
                              const Divider(),
                              Container(
                                padding: EdgeInsets.all(1.h),
                                child: Text(
                                  AppConstant.lifetime,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style,
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.h),
                          child: Text(
                            AppConstant.subscribeNow,
                            style: Theme.of(context).textTheme.headline4!,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.verified_user_outlined,
                      color: AppColorData.primaryIcon,
                      size: 15.sp,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 2.sp),
                      child: Text(
                        AppConstant.securedWithGooglePlay,
                        style: Theme.of(context).textTheme.headline6!,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.h),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      AppConstant.restorePurchase,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColorData.secondary,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 3.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        AppConstant.termsOfServices,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(decoration: TextDecoration.underline),
                      ),
                    ),
                    SizedBox(
                      width: 20.sp,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        AppConstant.privacyPolicy,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
