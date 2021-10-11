import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sizer/sizer.dart';
import 'package:monumental_habits/utils/utils.dart';

class CourseCard extends StatefulWidget {
  final String imgPath;
  const CourseCard({
    Key? key,
    required this.imgPath,
  }) : super(key: key);

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  bool? isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ViewRouter.details);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.5.h),
            color: AppColorData.courseCard),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2.5.h),
                    topRight: Radius.circular(2.5.h),
                  ),
                  child: Image(
                    image: AssetImage(widget.imgPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ]),
            Container(
              margin: EdgeInsets.only(
                  top: 2.h,
                  bottom: 1.h,
                  left: 2.w,
                  right: 2.w), //symmetric(vertical: 2,horizontal: 10),
              child: Text(
                AppConstant.courseTitle,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppConstant.courseDuration,
                        style: Theme.of(context).textTheme.headline4!,
                      ),
                      Text(AppConstant.lessons,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: AppColorData.secondaryTxt)),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isBookmarked = !isBookmarked!;
                      });
                    },
                    child: (isBookmarked == true)
                        ? Icon(Icons.bookmark_added_outlined,
                            size: 18.sp, color: AppColorData.bmAdded)
                        : Icon(Icons.bookmark_border,
                            size: 18.sp,
                            color: Theme.of(context).iconTheme.color),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      primary: AppColorData.appBarButtonsPrimary,
                      onPrimary: AppColorData.appBarButtonsPrimary,
                      shadowColor: AppColorData.appBarButtonsShadow,
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
