import 'package:flutter/material.dart';
import 'widgets/post_tab.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class YourPostsScreen extends StatefulWidget {
  const YourPostsScreen({Key? key}) : super(key: key);

  @override
  _YourPostsScreenState createState() => _YourPostsScreenState();
}

class _YourPostsScreenState extends State<YourPostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Scaffold(
          appBar: AppBar(
            toolbarHeight: 45.sp,
            leadingWidth: 70.sp,
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0,
            title: Text(AppConstant.yourPosts,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.w600)),
            centerTitle: true,
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
                ),
              ),
            ),
            iconTheme: const IconThemeData(color: AppColorData.primaryIcon),
          ),
          backgroundColor: Theme.of(context).backgroundColor,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Column(
                      children: List.generate(
                          5,
                          (index) => Padding(
                                padding: EdgeInsets.only(top: 2.h),
                                child: PostTab(
                                  key: UniqueKey(),
                                  imgPath: Resource.comUsers[0],
                                  username: AppConstant.user.name!,
                                ),
                              ))),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
