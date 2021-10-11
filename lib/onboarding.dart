import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  Widget buildImage(String path, double h, double w) => SizedBox(
        height: h,
        width: w,
        child: Image(
          image: AssetImage(path),
          fit: BoxFit.fill,
        ),
      );
  PageDecoration getPageDecor() => const PageDecoration(
      pageColor: AppColorData.onBoardingBg, bodyAlignment: Alignment.topCenter);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
              titleWidget: Row(children: [
                Expanded(
                  child: Text(AppConstant.welcomeToMonumentalHabits,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontWeight: FontWeight.w800)),
                ),
              ]),
              useScrollView: true,
              bodyWidget: buildImage(Resource.onboarding1, 58.h, 65.w),
              footer: Column(children: [
                Wrap(
                  children: [
                    Text(
                      AppConstant.weCan,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      AppConstant.helpYou,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: AppColorData.secondary,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      AppConstant.toBeBetter,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Wrap(
                    children: [
                      Text(
                        AppConstant.versionOf,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        AppConstant.yourself,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: AppColorData.secondary,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ]),
              decoration: getPageDecor()),
          PageViewModel(
              titleWidget: Text(
                AppConstant.createNewHabitsEasily,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              useScrollView: true,
              bodyWidget: buildImage(Resource.onboarding2, 57.h, 90.w),
              footer: Column(children: [
                Wrap(
                  children: [
                    Text(
                      AppConstant.weCan,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      AppConstant.helpYou,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: AppColorData.secondary,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      AppConstant.toBeBetter,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Wrap(
                    children: [
                      Text(
                        AppConstant.versionOf,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        AppConstant.yourself,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: AppColorData.secondary,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ]),
              decoration: getPageDecor()),
          PageViewModel(
              titleWidget: Text(
                AppConstant.keepTrackOfYourProgress,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              useScrollView: true,
              bodyWidget: buildImage(Resource.onboarding3, 55.h, 80.w),
              footer: Column(children: [
                Wrap(
                  children: [
                    Text(
                      AppConstant.weCan,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      AppConstant.helpYou,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: AppColorData.secondary,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      AppConstant.toBeBetter,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Wrap(
                    children: [
                      Text(
                        AppConstant.versionOf,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        AppConstant.yourself,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: AppColorData.secondary,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ]),
              decoration: getPageDecor()),
          PageViewModel(
              titleWidget: Text(
                AppConstant.joinASupportiveCommunity,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              useScrollView: true,
              bodyWidget:
                  buildImage('assets/images/onboarding4.png', 49.h, 90.w),
              footer: Column(children: [
                Column(children: [
                  Wrap(
                    children: [
                      Text(
                        AppConstant.weCan,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        AppConstant.helpYou,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: AppColorData.secondary,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        AppConstant.toBeBetter,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Wrap(
                      children: [
                        Text(
                          AppConstant.versionOf,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          AppConstant.yourself,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: AppColorData.secondary,
                                  fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ]),
                Container(
                  padding: EdgeInsets.only(
                    top: 1.h,
                    left: 1.h,
                    right: 1.h,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, ViewRouter.login);
                    },
                    child: Center(
                        child: Text(
                      AppConstant.getStarted,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    )),
                    style: Theme.of(context).elevatedButtonTheme.style,
                  ),
                ),
              ]),
              decoration: getPageDecor()),
        ],
        dotsDecorator: DotsDecorator(
            activeColor: AppColorData.primary,
            color: AppColorData.secondary,
            activeSize: Size(8.sp, 8.sp),
            size: Size(8.sp, 8.sp)),
        showSkipButton: true,
        skip: Text(
          AppConstant.skip,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        next: Text(
          AppConstant.next,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        done: const Text(''),
        onDone: () {},
      ),
    );
  }
}
