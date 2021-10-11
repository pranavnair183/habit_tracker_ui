import 'package:flutter/material.dart';
import 'models/user.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({ Key? key ,required this.user}) : super(key: key);
  final UserModel user;
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      child: Drawer(
        
        child: SizedBox(
            width: 40.h,
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10.h, 0, 5.h),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(AppConstant.user.imgUrl!),
                          radius: 40.sp,
                        ),
                      ),
                      Text(
                        AppConstant.user.name!,
                        style:
                            Theme.of(context).textTheme.headline3!,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                        child: TextButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed(ViewRouter.profile);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(1.h),
                            child: Text(AppConstant.viewProfile,style: Theme.of(context).textTheme.headline6!,),
                          ),
                          style: TextButton.styleFrom(
                            primary: AppColorData.primaryIcon,
                            backgroundColor: AppColorData.secondary,
                            onSurface: AppColorData.secondaryTxt,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: InkWell(
                    onTap: (){Navigator.of(context).pushNamed(ViewRouter.bookmarks);},
                    child: Row(
                      children: [
                        SizedBox(width: 4.w,),
                        Icon(Icons.bookmarks,size: 20.sp,color: AppColorData.primaryIcon),
                        SizedBox(width: 4.w,),
                        Text(AppConstant.bookmarks,style:Theme.of(context).textTheme.headline4!.copyWith()),
                      ],
                    ),
                  ),
                ),
                const Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: InkWell(
                    onTap: (){Navigator.of(context).pushNamed(ViewRouter.login);},
                    child: Row(
                      children: [
                        SizedBox(width: 4.w,),
                        Icon(Icons.logout,size: 20.sp,color: AppColorData.logoutTheme,),
                        SizedBox(width: 4.w,),
                        Text( AppConstant.logout,style: Theme.of(context).textTheme.headline4!.copyWith(color:AppColorData.logoutTheme),),
                      ],
                    ),
                  ),
                ),
                const Divider()
              ],
            ),
          ),
      ),
    );
  }
}