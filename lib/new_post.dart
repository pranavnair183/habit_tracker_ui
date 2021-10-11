import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class NewPost extends StatefulWidget {
  const NewPost({ Key? key }) : super(key: key);

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:false,
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          toolbarHeight: 45.sp,
          leadingWidth: 70.sp,
          leading: Padding(
            padding: EdgeInsets.only(bottom: 1.h,top: 1.5.h),
            child: ElevatedButton(
              onPressed: () {Navigator.of(context).pop();},
              child: Icon(Icons.arrow_back, color: AppColorData.primaryIcon,size: 20.sp,),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary: AppColorData.appBarButtonsPrimary,
                onPrimary: AppColorData.appBarButtonsPrimary,
                shadowColor: AppColorData.appBarButtonsShadow,
                elevation: 1,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(bottom: 1.h,right: 6.w,top: 1.5.h),
              child: TextButton(  
                      onPressed: (){},
                      child: Wrap(
                          children:[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0.2.h, 0, 0),
                              child: Text(
                                AppConstant.post,
                                style: Theme.of(context).textTheme.headline5!.copyWith(color:AppColorData.purpleButtonChild),
                              ),
                            ),
                            Icon(Icons.send,size: 15.sp,color:AppColorData.purpleButtonChild,)]),
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) => AppColorData.primary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )
                      ),
                    ),
                  ),
            ),
          ],
          centerTitle: true,
          iconTheme: const IconThemeData(color: AppColorData.primaryIcon),
          backgroundColor: AppColorData.appBar,
          elevation: 0,
          title: Text(AppConstant.addNewPost,style: Theme.of(context).textTheme.headline2!.copyWith(fontWeight: FontWeight.w600),),
        ),
        body:SingleChildScrollView(
          child: Column(children: [
            
              Padding(
          padding: EdgeInsets.all(1.h),
          child: Form(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.h),
                    child: TextFormField(
                      minLines: 5,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      style: Theme.of(context).textTheme.headline4!,
                      decoration: const InputDecoration(
                        hintText: AppConstant.writeSomethingHere
                      ),
                    ),
                  ),
                ],),
            )),)
              
            ],),
        ));
  }
}