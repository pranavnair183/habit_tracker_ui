import 'package:flutter/material.dart';
import 'utils/utils.dart';
import 'package:sizer/sizer.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({ Key? key }) : super(key: key);

  @override
  _BookmarksScreenState createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).backgroundColor,
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back,size: 15.sp,),
            onPressed: (){
              Navigator.of(context).pushNamedAndRemoveUntil(ViewRouter.home, (route) => false);
          },
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: AppColorData.primaryIcon),
          backgroundColor: AppColorData.appBar,
          elevation: 0,
          title: Text(AppConstant.bookmarks,style: Theme.of(context).textTheme.headline4,),
          
        ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
        child: ListView.builder(
          itemCount: 10,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context,index){
            return Column(
                children:[Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
                  child: Row(
                    children: [
                      Image.asset('assets/images/course_1.png',height: 10.h,),
                      SizedBox(width: 2.w,),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Text(AppConstant.courseTitle,style: Theme.of(context).textTheme.headline6,)),
                            IconButton(iconSize: 15.sp,onPressed: (){},icon: Icon(Icons.delete,color: AppColorData.deleteIcon,size: 15.sp,),),
                          ],
                        ),
                      )
                    ],
                  
            ),
                ),
                const Divider()
                ]);
          }
          
          ),
        ),
      ),
    );
  }
}