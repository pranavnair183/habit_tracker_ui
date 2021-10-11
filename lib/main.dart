// @dart=2.9

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:monumental_habits/comments_screen.dart';
import 'package:monumental_habits/new_post.dart';
import 'package:monumental_habits/pages.dart';
import 'package:monumental_habits/login.dart';
import 'package:monumental_habits/onboarding.dart';
import 'package:monumental_habits/pricing.dart';
import 'package:monumental_habits/reset.dart';
import 'package:monumental_habits/search_page.dart';
import 'package:monumental_habits/signup.dart';
import 'package:device_preview/device_preview.dart';
import 'package:monumental_habits/your_posts_screen.dart';
import 'flick_player/flick_player.dart';
import 'bookmarks_screen.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData(
            primaryColor: AppColorData.primary,
            brightness: Brightness.light,
            backgroundColor: AppColorData.bg,
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: AppColorData.floatingActionButtonBg,
              splashColor: AppColorData.floatingActionButtonSplash,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                    padding: MaterialStateProperty.resolveWith(
                      (states) => EdgeInsets.symmetric(vertical: 2.h),
                    ),
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => AppColorData.elevatedButtonBg),
                    shape: MaterialStateProperty.resolveWith((states) =>
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.5.h))))),
            primaryIconTheme:
                const IconThemeData(color: AppColorData.primaryIcon),
            buttonTheme: ButtonThemeData(
              buttonColor: AppColorData.buttonBg,
              textTheme: ButtonTextTheme.primary,
              padding: EdgeInsets.symmetric(vertical: 2.h),
            ),
            textTheme: TextTheme(
              headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: AppColorData.headline1,
              ),
              headline2: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19.sp,
                color: AppColorData.headline2,
              ),
              headline3: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                color: AppColorData.headline3,
              ),
              headline4: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                color: AppColorData.headline4,
              ),
              headline5: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: AppColorData.headline5,
              ),
              headline6: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10.sp,
                color: AppColorData.headline6,
              ),
              bodyText1: TextStyle(
                  color: AppColorData.bodyText1,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp),
              bodyText2: TextStyle(
                  color: AppColorData.bodyText2,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp),
              caption: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 8.sp,
                color: AppColorData.caption,
              ),
            )),
        debugShowCheckedModeBanner: false,
        initialRoute: '/board',
        routes: {
          '/board': (context) => const OnBoardingPage(),
          '/login': (context) => const LogIn(),
          '/reset': (context) => const Resetpass(),
          '/sign': (context) => const SignUp(),
          '/home': (context) => const Pages(currentIndex: 0),
          '/new': (context) => const Pages(
                currentIndex: 6,
              ),
          '/details': (context) => const Pages(
                currentIndex: 4,
              ),
          '/profile': (context) => const Pages(
                currentIndex: 5,
              ),
          '/pricing': (context) => const Pricing(),
          '/addPost': (context) => const NewPost(),
          '/community': (context) => const Pages(currentIndex: 2),
          '/vplayer': (context) => const LandscapePlayer(),
          '/settings': (context) => const Pages(
                currentIndex: 3,
              ),
          '/comments': (context) => const CommentScreen(),
          '/your_posts': (context) => const YourPostsScreen(),
          '/bookmarks': (context) => const BookmarksScreen(),
          '/habit_detail': (context) => const Pages(
                currentIndex: 7,
              ),
          '/search_page': (context) => const SearchScreen(),
        },
      );
    });
  }
}
