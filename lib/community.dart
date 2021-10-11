import 'package:flutter/material.dart';
import 'widgets/post_tab.dart';
import 'utils/utils.dart';
import 'package:sizer/sizer.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.5.h,top: 2.h),
              child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context,index) {return Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.h,horizontal: 3.w),
                        child: PostTab(key: UniqueKey(),imgPath: Resource.comUsers.elementAt(index),username: AppConstant.comUsers.elementAt(index),),
                      );},
                    ),
            ),
      ),
    );
  }
}