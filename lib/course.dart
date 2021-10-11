import 'package:flutter/material.dart';
import 'widgets/course_card.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  List<String> searchResults = [];
  String dropdownValue = AppConstant.sortbyList[0];
  String dropdownValue2 = AppConstant.sortbyList[4];

  void fetchSearchResults(String keyword) {
    setState(() {
      searchResults.clear();
    });
    if (keyword.isEmpty) {
      setState(() {
        searchResults.clear();
      });
    } else {
      setState(() {
        searchResults = AppConstant.searchResults;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 27.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.h),
                      image: const DecorationImage(
                          image: AssetImage(Resource.courseHeader),
                          fit: BoxFit.fill),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            title: Container(
                              margin: EdgeInsets.only(top: 0.5.h),
                              child: Text(
                                AppConstant.habitCourses,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                            subtitle: Text(
                              AppConstant.findWhatFascinates,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(fontWeight: FontWeight.w500),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Row(
              children: [
                Text(
                  AppConstant.sortby,
                  style: Theme.of(context).textTheme.headline3!,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Container(
                      height: 5.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.h),
                          color: AppColorData.dropdownColor),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.h),
                        child: DropdownButton<String>(
                          underline: const SizedBox(),
                          value: dropdownValue,
                          icon: DecoratedIcon(
                            Icons.keyboard_arrow_down_rounded,
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
                          isExpanded: true,
                          iconSize: 22.sp,
                          elevation: 16,
                          style: Theme.of(context).textTheme.headline5!,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: AppConstant.sortbyList
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: Theme.of(context).textTheme.headline5!,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.w),
                  child: Container(
                    height: 5.h,
                    width: 27.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColorData.dropdownColor),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 0),
                      child: DropdownButton<String>(
                        underline: const SizedBox(),
                        value: dropdownValue2,
                        icon: DecoratedIcon(
                          Icons.keyboard_arrow_down_rounded,
                          color: AppColorData.secondaryIcon,
                          shadows: [
                            BoxShadow(
                              blurRadius: 42.sp,
                              color: AppColorData.secondaryIcon,
                            ),
                            BoxShadow(
                              blurRadius: 12.sp,
                              color: AppColorData.secondaryIcon,
                            ),
                          ],
                        ),
                        isExpanded: true,
                        iconSize: 22.sp,
                        elevation: 16,
                        style: const TextStyle(color: AppColorData.primary),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue2 = newValue!;
                          });
                        },
                        items: AppConstant.sortbyList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: AppColorData.secondaryIcon),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(6.w, 1.h, 6.w, 0),
            child: CourseCard(
              imgPath: Resource.course1,
              key: UniqueKey(),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(6.w, 1.h, 6.w, 5.h),
            child: CourseCard(
              imgPath: Resource.course2,
              key: UniqueKey(),
            ),
          ),
          SizedBox(
            height: 14.h,
          )
        ],
      ),
    );
  }
}
