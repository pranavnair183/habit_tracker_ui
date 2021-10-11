import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class Resetpass extends StatefulWidget {
  const Resetpass({Key? key}) : super(key: key);

  @override
  _ResetpassState createState() => _ResetpassState();
}

class _ResetpassState extends State<Resetpass> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#fff3e9"),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          toolbarHeight: 45.sp,
          leadingWidth: 70.sp,
          iconTheme: const IconThemeData(color: AppColorData.primaryIcon),
          backgroundColor: AppColorData.appBar,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(bottom: 1.h, top: 1.5.h),
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
              ),
            ),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      AppConstant.forgotYourPassword,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1,
                    ))
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(0.0, 1.h, 0.0, 0.0),
                  child: Image.asset(Resource.resetHeader, height: 40.h)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColorData.resetCard,
                      borderRadius: BorderRadius.circular(25)),
                  padding: EdgeInsets.symmetric(vertical: 1.5.h),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15.sp),
                        child: Text(
                          AppConstant.enterYourRegisteredEmailBelow,
                          style: Theme.of(context).textTheme.headline6!,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: ThemeData().colorScheme.copyWith(
                                primary: AppColorData.secondaryIcon,
                              ),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 7.w, vertical: 10.sp),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 10.w),
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: AppColorData.secondaryTxt,
                                      fontWeight: FontWeight.w400),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(10.0)),
                              prefixIcon: Icon(
                                Icons.email,
                                size: 14.sp,
                              ),
                              fillColor: HexColor("#fff3e9"),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(10.0)),
                              hintText: AppConstant.enterEmail,
                            ),
                            onChanged: (value) {
                              email = value;
                            },
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: AppColorData.secondaryIcon),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7.w),
                        child: Row(children: [
                          Expanded(
                            child: ElevatedButton(
                              style:
                                  Theme.of(context).elevatedButtonTheme.style,
                              onPressed: () {},
                              child: Text(
                                AppConstant.sendResetLink,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppConstant.rememberPassword,
                        style: Theme.of(context).textTheme.headline6!,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, ViewRouter.login);
                        },
                        child: Text(
                          AppConstant.login,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
