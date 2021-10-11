import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'utils/utils.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _obscureText = true;

  void navigate(String? url) {
    Navigator.pushReplacementNamed(context, url!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#fff3e9"),
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 35.h,
            child: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                Resource.loginBg,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 9.5.h),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppConstant.welcomeToMonumentalHabits,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: SizedBox(
                  height: 6.h,
                  child: Row(children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.resolveWith((states) =>
                              const EdgeInsets.symmetric(vertical: 0)),
                          elevation:
                              MaterialStateProperty.resolveWith((states) => 0),
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => AppColorData.socialLoginButton),
                          shape: MaterialStateProperty.resolveWith((states) =>
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.h))),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, ViewRouter.home);
                        },
                        child: Row(children: [
                          SizedBox(
                            width: 12.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1.h),
                            child: SvgPicture.asset(
                              Resource.googleIcon,
                              height: 6.h,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Expanded(
                            child: Text(
                              AppConstant.continueWithGoogle,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    color: AppColorData.socialLoginTxt,
                                  ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 0.2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: SizedBox(
                  height: 6.h,
                  child: Row(children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.resolveWith((states) =>
                              EdgeInsets.symmetric(
                                  vertical: 1.5.h, horizontal: 4.w)),
                          elevation:
                              MaterialStateProperty.resolveWith((states) => 0),
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => AppColorData.socialLoginButton),
                          shape: MaterialStateProperty.resolveWith((states) =>
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.h))),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, ViewRouter.home);
                        },
                        child: Row(children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            Icons.facebook,
                            color: AppColorData.fbIcon,
                            size: 3.5.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(
                              child: Text(AppConstant.continueWithFacebook,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                          color: AppColorData.socialLoginTxt))),
                        ]),
                      ),
                    ),
                  ]),
                ),
              ),
            ]),
          ),
          Positioned(
            right: 6.w,
            top: 3.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset(
                  Resource.helpIcon,
                  height: 17.sp,
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(1.h),
                  shape: const CircleBorder(),
                  primary: AppColorData.appBarButtonsPrimary,
                  onPrimary: AppColorData.appBarButtonsPrimary,
                  shadowColor: AppColorData.appBarButtonsShadow,
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.42,
              minChildSize: 0.2,
              maxChildSize: 1.0,
              expand: true,
              builder: (BuildContext context, myscrollController) {
                return LayoutBuilder(
                  builder: (context, constraint) {
                    return SingleChildScrollView(
                        controller: myscrollController,
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints(minHeight: constraint.maxHeight),
                          child: IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColorData.loginSheetBg,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(3.h),
                                  topRight: Radius.circular(3.h),
                                ),
                              ),
                              child: Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: ThemeData().colorScheme.copyWith(
                                        primary: AppColorData.secondary,
                                      ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 2.h, bottom: 1.h),
                                      child: Text(
                                        AppConstant.logInWithEmail,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                      ),
                                    ),
                                    Divider(
                                      color: HexColor("#fff3e9"),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5.w, vertical: 0.5.h),
                                      child: TextField(
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                color: AppColorData.secondary),
                                        decoration: InputDecoration(
                                            prefixIconConstraints:
                                                BoxConstraints(minWidth: 10.w),
                                            contentPadding: EdgeInsets.only(
                                              top: 2.h,
                                              bottom: 2.h,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1.5.h)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.transparent),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1.5.h)),
                                            prefixIcon: Icon(
                                              Icons.email_outlined,
                                              size: 15.sp,
                                            ),
                                            fillColor: HexColor("#fff3e9"),
                                            filled: true,
                                            hintText: AppConstant.enterEmail,
                                            hintStyle: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    color: AppColorData
                                                        .secondaryTxt,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                        onChanged: (value) {},
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5.w, vertical: 0.5.h),
                                      child: TextField(
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                color: AppColorData.secondary),
                                        decoration: InputDecoration(
                                            prefixIconConstraints:
                                                BoxConstraints(minWidth: 10.w),
                                            contentPadding: EdgeInsets.only(
                                              top: 2.h,
                                              bottom: 2.h,
                                            ),
                                            prefixIcon: Icon(
                                              Icons.lock_outlined,
                                              size: 15.sp,
                                            ),
                                            suffix: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    _obscureText =
                                                        !_obscureText;
                                                  });
                                                },
                                                child: Text(
                                                  ((_obscureText == true)
                                                          ? AppConstant.show
                                                          : AppConstant.hide) +
                                                      "   ",
                                                  style: const TextStyle(
                                                      color:
                                                          AppColorData.primary),
                                                )),
                                            fillColor: HexColor("#fff3e9"),
                                            filled: true,
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1.5.h)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.transparent),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1.5.h)),
                                            hintText: AppConstant.password,
                                            hintStyle: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    color: AppColorData
                                                        .secondaryTxt,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                        obscureText: _obscureText,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          6.w, 0.8.h, 6.w, 0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                              style: Theme.of(context)
                                                  .elevatedButtonTheme
                                                  .style,
                                              onPressed: () {
                                                Navigator.pushReplacementNamed(
                                                    context, ViewRouter.home);
                                              },
                                              child: Text(
                                                AppConstant.login,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline5!,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 1.h,
                                          bottom:
                                              0), //symmetric(vertical: 1.h),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed(ViewRouter.reset);
                                        },
                                        child: Text(
                                          AppConstant.forgotYourPassword,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 0, 2.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: Text(
                                              AppConstant.dontHaveAnAccount,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6!,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushReplacementNamed(
                                                  context, ViewRouter.signIn);
                                            },
                                            child: Text(
                                              AppConstant.signUp,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ));
                  },
                );
              })
        ],
      ),
    );
  }
}
