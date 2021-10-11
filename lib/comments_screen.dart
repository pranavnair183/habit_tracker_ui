import 'package:flutter/material.dart';
import 'widgets/comment_tab.dart';
import 'package:sizer/sizer.dart';

import 'utils/utils.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        toolbarHeight: 31.sp,
        leadingWidth: 70.sp,
        leading: Padding(
          padding: EdgeInsets.only(bottom: 1.h),
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
                padding: EdgeInsets.all(2.w)),
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColorData.primaryIcon),
        backgroundColor: AppColorData.appBar,
        elevation: 0,
        title: Text(
          AppConstant.comments,
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      bottomNavigationBar: Container(
          padding: MediaQuery.of(context).viewInsets,
          color: Colors.transparent,
          child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).backgroundColor,
                focusColor: Colors.red,
                labelStyle: const TextStyle(color: AppColorData.primary),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColorData.primary),
                  borderRadius: BorderRadius.circular(1.h),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1.h),
                  borderSide: const BorderSide(color: AppColorData.primary),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1.h),
                  borderSide: const BorderSide(color: AppColorData.primary),
                ),
                labelText: 'Comment',
                suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.send,
                      color: AppColorData.primaryIcon,
                    ),
                    onPressed: () {})),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: Card(
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 21,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        const CommentTab(),
                        Divider(
                          color: Theme.of(context).backgroundColor,
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
