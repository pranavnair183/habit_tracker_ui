import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:monumental_habits/community.dart';
import 'package:monumental_habits/course.dart';
import 'package:monumental_habits/habit_detail.dart';
import 'package:monumental_habits/profile.dart';
import 'course_detail.dart';
import 'package:monumental_habits/home.dart';
import 'package:monumental_habits/new_habit.dart';
import 'package:monumental_habits/settings.dart';
import 'models/user.dart';
import 'drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class Pages extends StatefulWidget {
  final int currentIndex;
  const Pages({Key? key, required this.currentIndex}) : super(key: key);

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  List<Widget> tabPages = const [
    Home(),
    Courses(),
    Community(),
    Settings(),
    CourseDetail(),
    Profile(),
    NewHabit(),
    HabitDetailScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  bool isPressed = false;
  int? index;

  void togglePage(int pageIndex) {
    setState(() {
      index = pageIndex;
    });
  }

  @override
  void initState() {
    index = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = UserModel(
        id: 12,
        email: 'abc@gmail.com',
        name: 'John',
        age: 15,
        imgUrl: 'assets/images/man.jfif');
    return Scaffold(
      extendBody: (index == 6) ? false : true,
      drawer: (index != 4 || index != 5) ? AppDrawer(user: user) : null,
      resizeToAvoidBottomInset: false,
      body: (index == 0 || index == 1 || index == 6)
          ? Stack(
              children: [
                SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(Resource.bg1, fit: BoxFit.fitHeight)),
                tabPages[index!]
              ],
            )
          : tabPages[index!],
      backgroundColor: Theme.of(context).backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: (index == 0 ||
              index == 2 ||
              index == 3 ||
              index == 4 ||
              index == 1 ||
              index == 5 ||
              index == 7)
          ? Container(
              margin: EdgeInsets.only(bottom: 2.h),
              height: 8.h,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColorData.secondaryTxt,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context)
                            .floatingActionButtonTheme
                            .splashColor!,
                        spreadRadius: 3.sp,
                      ),
                    ]),
                child: FittedBox(
                  child: FloatingActionButton(
                    backgroundColor: Theme.of(context)
                        .floatingActionButtonTheme
                        .backgroundColor,
                    //elevation: 10,
                    child: SvgPicture.asset(
                      Resource.addIcon,
                      height: 2.5.h,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed((index == 2)
                          ? ViewRouter.addPost
                          : ViewRouter.newHabit);
                    },
                  ),
                ),
              ),
            )
          : (index == 6)
              ? Container(
                  margin: EdgeInsets.only(bottom: 20.sp),
                  child: Container(
                    height: 8.h,
                    decoration: BoxDecoration(
                        color: AppColorData.secondaryTxt,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context)
                                .floatingActionButtonTheme
                                .splashColor!,
                            spreadRadius: 3.sp,
                          ),
                        ]),
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Theme.of(context)
                            .floatingActionButtonTheme
                            .backgroundColor,
                        child: SvgPicture.asset(
                          Resource.doneIcon,
                          height: 2.5.h,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                )
              : null,
      appBar: (index != 1)
          ? (index == 4 || index == 5 || index == 6 || index == 7)
              ? AppBar(
                  toolbarHeight: 45.sp,
                  leadingWidth: 70.sp,
                  title: Text(
                      (index == 4)
                          ? AppConstant.courseTitle
                          : (index == 5)
                              ? AppConstant.profile
                              : (index == 7)
                                  ? AppConstant.readabook
                                  : AppConstant.newhabit,
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontWeight: FontWeight.w600)),
                  centerTitle: true,
                  iconTheme:
                      const IconThemeData(color: AppColorData.primaryIcon),
                  backgroundColor: AppColorData.appBar,
                  elevation: 0,
                  leading: Padding(
                    padding: EdgeInsets.only(bottom: 1.h, top: 1.5.h),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).iconTheme.color,
                        size: 20.sp,
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          primary: AppColorData.appBarButtonsPrimary,
                          onPrimary: AppColorData.appBarButtonsPrimary,
                          shadowColor: AppColorData.appBarButtonsShadow,
                          elevation: 1,
                          padding: EdgeInsets.symmetric(vertical: 1.h)),
                    ),
                  ),
                  actions: (index == 5 || index == 7)
                      ? [
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 1.h, right: 6.w, top: 0.5.h),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: SvgPicture.asset(
                                Resource.editIcon,
                                height: 16.sp,
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  primary: AppColorData.appBarButtonsPrimary,
                                  onPrimary: AppColorData.appBarButtonsPrimary,
                                  shadowColor: AppColorData.appBarButtonsShadow,
                                  elevation: 1,
                                  padding: EdgeInsets.all(3.w)),
                            ),
                          ),
                        ]
                      : null,
                )
              : AppBar(
                  toolbarHeight: 45.sp,
                  leadingWidth: 70.sp,
                  centerTitle: true,
                  iconTheme:
                      const IconThemeData(color: AppColorData.primaryIcon),
                  backgroundColor: AppColorData.appBar,
                  elevation: 0,
                  leading: Builder(builder: (context) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 1.h, top: 1.5.h),
                      child: ElevatedButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: SvgPicture.asset(
                          Resource.menuIcon,
                          height: 5.h,
                          width: 5.h,
                          fit: BoxFit.cover,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          primary: AppColorData.appBarButtonsPrimary,
                          onPrimary: AppColorData.appBarButtonsPrimary,
                          shadowColor: AppColorData.appBarButtonsShadow,
                          elevation: 1,
                        ),
                      ),
                    );
                  }),
                  title: Text(
                    (index == 0)
                        ? AppConstant.homepage
                        : (index == 2)
                            ? AppConstant.community
                            : AppConstant.settings,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  actions: [
                    if (index != 3)
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 1.h, right: 4.w, top: 1.5.h),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(ViewRouter.profile);
                          },
                          child: (index == 2)
                              ? Image.asset(Resource.girlIcon)
                              : CircleAvatar(
                                  radius: 15.sp,
                                  backgroundImage: AssetImage(user.imgUrl!),
                                ),
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              primary: AppColorData.appBarButtonsPrimary,
                              onPrimary: AppColorData.appBarButtonsPrimary,
                              shadowColor: AppColorData.appBarButtonsShadow,
                              elevation: 1,
                              padding: EdgeInsets.zero),
                        ),
                      ),
                  ],
                )
          : AppBar(
              toolbarHeight: 45.sp,
              leadingWidth: 70.sp,
              backgroundColor: AppColorData.appBar,
              elevation: 0,
              title: Text(AppConstant.courses,
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(fontWeight: FontWeight.w600)),
              centerTitle: true,
              actions: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h, right: 6.w, top: 1.5.h),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(ViewRouter.searchPage);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(2.w),
                      child: SvgPicture.asset(
                        Resource.searchIcon,
                        height: 4.h,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(1.w),
                      shape: const CircleBorder(),
                      primary: AppColorData.appBarButtonsPrimary,
                      onPrimary: AppColorData.appBarButtonsPrimary,
                      shadowColor: AppColorData.appBarButtonsShadow,
                      elevation: 1,
                    ),
                  ),
                ),
              ],
              leading: Builder(builder: (context) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 1.h, top: 1.5.h),
                  child: ElevatedButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: SvgPicture.asset(
                      Resource.menuIcon,
                      height: 5.h,
                      width: 5.h,
                      fit: BoxFit.cover,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      primary: AppColorData.appBarButtonsPrimary,
                      onPrimary: AppColorData.appBarButtonsPrimary,
                      shadowColor: AppColorData.appBarButtonsShadow,
                      elevation: 1,
                    ),
                  ),
                );
              }),
            ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4.sp,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MaterialButton(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: ColorFiltered(
                      colorFilter: (index == 0 || index == 6)
                          ? const ColorFilter.mode(
                              Colors.transparent,
                              BlendMode.multiply,
                            )
                          : const ColorFilter.matrix(<double>[
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0,
                              0,
                              0,
                              1,
                              0,
                            ]),
                      child: Image.asset(
                        Resource.homeIcon,
                        height: (index == 0 || index == 6) ? 35.sp : 25.sp,
                      )),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: ColorFiltered(
                      colorFilter: (index == 1 || index == 4)
                          ? const ColorFilter.mode(
                              Colors.transparent,
                              BlendMode.multiply,
                            )
                          : const ColorFilter.matrix(<double>[
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0,
                              0,
                              0,
                              1,
                              0,
                            ]),
                      child: Image.asset(
                        Resource.courseIcon,
                        height: (index == 1 || index == 4) ? 35.sp : 25.sp,
                      )),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: ColorFiltered(
                      colorFilter: index == 2
                          ? const ColorFilter.mode(
                              Colors.transparent,
                              BlendMode.multiply,
                            )
                          : const ColorFilter.matrix(<double>[
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0,
                              0,
                              0,
                              1,
                              0,
                            ]),
                      child: Image.asset(
                        Resource.communityIcon,
                        height: (index == 2) ? 35.sp : 25.sp,
                      )),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      index = 3;
                    });
                  },
                  child: ColorFiltered(
                      colorFilter: (index == 3)
                          ? const ColorFilter.mode(
                              Colors.transparent,
                              BlendMode.multiply,
                            )
                          : const ColorFilter.matrix(<double>[
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0.2126,
                              0.7152,
                              0.0722,
                              0,
                              0,
                              0,
                              0,
                              0,
                              1,
                              0,
                            ]),
                      child: Image.asset(
                        Resource.settingsIcon,
                        height: (index == 3) ? 35.sp : 25.sp,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
