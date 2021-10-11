import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:monumental_habits/utils/utils.dart';

class CommentTab extends StatelessWidget {
  const CommentTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(2.w, 1.h, 0, 0),
          child: CircleAvatar(
                radius: 4.h,
                backgroundImage:
                    AssetImage(AppConstant.user.imgUrl!),
              ),
        ),
        SizedBox(width: 2.w,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppConstant.user.name!,
                style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight:FontWeight.bold)
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(AppConstant.commentRandom,style: Theme.of(context).textTheme.headline6!,)
            ],
          )
        )
      ],
    );
  }
} 