import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import 'package:monumental_habits/utils/utils.dart';

class PostTab extends StatefulWidget {
  const PostTab({
    Key? key,
    required this.username,
    required this.imgPath,
  }) : super(key: key);

  final String username;
  final String imgPath;
  @override
  _PostTabState createState() => _PostTabState();
}

class _PostTabState extends State<PostTab> {
  bool? isLiked;
  @override
  void initState() {
    setState(() {
      isLiked = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.sp, left: 10.sp, right: 10.sp),
                child: Image.asset(
                  Resource.iconsFolder + widget.imgPath.toString(),
                  height: 30.sp,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.username,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      AppConstant.ago,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.sp, top: 5.sp),
                child: CircleAvatar(
                    backgroundColor: AppColorData.share,
                    radius: 10.sp,
                    child: SvgPicture.asset(
                      Resource.shareIcon,
                      height: 10.sp,
                    )),
              ),
            ],
          ),
          const Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
            child: Text(
              AppConstant.manYouAreMy,
              style: Theme.of(context).textTheme.headline5!,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked!;
                    });
                  },
                  icon: Icon(
                    (isLiked == true)
                        ? FontAwesomeIcons.solidHeart
                        : FontAwesomeIcons.heart,
                    color: AppColorData.secondary,
                    size: 10.sp,
                  ),
                ),
                Text(
                  AppConstant.likes,
                  style: Theme.of(context).textTheme.headline6!,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ViewRouter.comments);
                  },
                  icon: Icon(
                    FontAwesomeIcons.solidComment,
                    color: AppColorData.secondary,
                    size: 10.sp,
                  ),
                ),
                Text(AppConstant.twentytwo,
                    style: Theme.of(context).textTheme.headline6!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
