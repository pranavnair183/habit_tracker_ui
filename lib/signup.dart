import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'utils/utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isSigned = false;
  bool emailMe = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#fff3e9"),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ThemeData().colorScheme.copyWith(
                      primary: AppColorData.secondary,
                    ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 26.h,
                    child: const Image(
                      image: AssetImage(Resource.signupHeader),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: Text(
                        AppConstant.createYourAccount,
                        style: TextStyle(
                            color: AppColorData.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIconConstraints: BoxConstraints(minWidth: 10.w),
                          hintStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: AppColorData.secondaryTxt,
                                  fontWeight: FontWeight.w400),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(1.5.h)),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            size: 15.sp,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.sp),
                          fillColor: AppColorData.textField,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(1.5.h)),
                          hintText: AppConstant.name),
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: AppColorData.secondary),
                      onChanged: (value) {},
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.sp),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIconConstraints: BoxConstraints(minWidth: 10.w),
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(
                                color: AppColorData.secondaryTxt,
                                fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(1.5.h)),
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          size: 15.sp,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.sp),
                        fillColor: AppColorData.textField,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(1.5.h)),
                        hintText: AppConstant.email,
                      ),
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: AppColorData.secondary),
                      onChanged: (value) {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 6.w, right: 6.w),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIconConstraints: BoxConstraints(minWidth: 10.w),
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(
                                color: AppColorData.secondaryTxt,
                                fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(1.5.h)),
                        prefixIcon: Icon(
                          Icons.lock_outlined,
                          size: 15.sp,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.sp),
                        suffix: InkWell(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Text(
                              (_obscureText == true) ? 'Show' : 'Hide',
                              style:
                                  const TextStyle(color: AppColorData.primary),
                            )),
                        fillColor: AppColorData.textField,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(1.5.h)),
                        hintText: AppConstant.password,
                      ),
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: AppColorData.secondary),
                      obscureText: _obscureText,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      children: [
                        Checkbox(
                          side: const BorderSide(
                              color: AppColorData.secondaryTxt),
                          value: isSigned,
                          onChanged: (bool? value) {
                            setState(() {
                              isSigned = value!;
                            });
                          },
                          checkColor: AppColorData.checkColor,
                          activeColor: AppColorData.secondaryIcon,
                        ),
                        Expanded(
                          child: Text(
                            AppConstant.keepMeSignedIn,
                            style: Theme.of(context).textTheme.headline5!,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      children: [
                        Checkbox(
                          side: const BorderSide(
                              color: AppColorData.secondaryTxt),
                          value: emailMe,
                          onChanged: (bool? value) {
                            setState(() {
                              emailMe = value!;
                            });
                          },
                          checkColor: AppColorData.checkColor,
                          activeColor: AppColorData.secondary,
                        ),
                        Expanded(
                            child: Text(
                          AppConstant.emailMeAbout,
                          style: Theme.of(context).textTheme.headline5!,
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 6.h,
                            child: ElevatedButton(
                              style:
                                  Theme.of(context).elevatedButtonTheme.style,
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, ViewRouter.home);
                              },
                              child: Text(
                                AppConstant.createAccount,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.sp, 0, 15.sp, 8.sp),
                    child: Row(children: <Widget>[
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: const Divider(
                              color: AppColorData.divider,
                              height: 36,
                            )),
                      ),
                      Text(
                        AppConstant.orSignInWith,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: AppColorData.secondaryTxt),
                      ),
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: const Divider(
                              color: AppColorData.divider,
                              height: 36,
                            )),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.resolveWith(
                                    (states) =>
                                        EdgeInsets.symmetric(vertical: 1.4.h),
                                  ),
                                  backgroundColor:
                                      MaterialStateColor.resolveWith((states) =>
                                          AppColorData.socialLoginButton),
                                  shape: MaterialStateProperty.resolveWith(
                                      (states) => RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0))),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, ViewRouter.home);
                                },
                                child: Row(children: [
                                  const Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3.sp),
                                    child: SvgPicture.asset(
                                      Resource.googleIcon,
                                      height: 20.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.sp,
                                  ),
                                  Text(
                                    AppConstant.google,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          color: AppColorData.socialLoginTxt,
                                        ),
                                  ),
                                  const Spacer(),
                                ]))),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Expanded(
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.resolveWith(
                                    (states) =>
                                        EdgeInsets.symmetric(vertical: 1.4.h),
                                  ),
                                  backgroundColor:
                                      MaterialStateColor.resolveWith((states) =>
                                          AppColorData.socialLoginButton),
                                  shape: MaterialStateProperty.resolveWith(
                                      (states) => RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0))),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, ViewRouter.home);
                                },
                                child: Row(children: [
                                  const Spacer(),
                                  Icon(
                                    Icons.facebook,
                                    color: AppColorData.fbIcon,
                                    size: 20.sp,
                                  ),
                                  SizedBox(width: 4.sp),
                                  Text(
                                    AppConstant.facebook,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                            color: AppColorData.socialLoginTxt),
                                  ),
                                  const Spacer(),
                                ]))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            AppConstant.alreadyHaveAnAccount,
                            style: Theme.of(context).textTheme.headline6!,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, ViewRouter.login);
                          },
                          child: Text(
                            AppConstant.signIn,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
