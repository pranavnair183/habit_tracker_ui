import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary: AppColorData.primary,
                      ),
                ),
                child: TextField(
                  style: Theme.of(context).textTheme.headline4!,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1.h),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1.h),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    prefixIcon: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back,
                            size: 15.sp, color: AppColorData.primaryIcon)),
                    contentPadding: EdgeInsets.symmetric(vertical: 1.5.h),
                    fillColor: AppColorData.textField,
                    filled: true,
                    hintText: AppConstant.searchForCourses,
                  ),
                ),
              ),
            ),
            const Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(10, (index) {
                    return Column(children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(ViewRouter.details);
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.sp),
                                child: Image.asset(
                                  Resource.course1,
                                  height: 10.h,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppConstant.course + index.toString(),
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: AppColorData.primary),
                                  ),
                                  Text(
                                    AppConstant.randomSearch,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            color: AppColorData.secondaryTxt),
                                  ),
                                ],
                              ))
                            ],
                          )),
                      const Divider()
                    ]);
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
