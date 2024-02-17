import 'bloc/splash_screens_bloc.dart';
import 'models/splash_screens_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';

class SplashScreensScreen extends StatelessWidget {
  const SplashScreensScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashScreensBloc>(
        create: (context) => SplashScreensBloc(
            SplashScreensState(splashScreensModelObj: SplashScreensModel()))
          ..add(SplashScreensInitialEvent()),
        child: SplashScreensScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashScreensBloc, SplashScreensState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            theme.colorScheme.primary,
                            theme.colorScheme.onPrimaryContainer
                          ]),
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgSplashScreens),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 37.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 20.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                    height: 248.v,
                                    width: 277.h,
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 53.h, right: 72.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgLogo,
                                                            height: 127.v,
                                                            width: 120.h),
                                                        SizedBox(height: 91.v),
                                                        Text(
                                                            "msg_taxi_of_your_dreams"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .headlineLargeJomhuriaWhiteA700)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 12.v),
                                                  child: Text("lbl_gooride".tr,
                                                      style: CustomTextStyles
                                                          .jomhuriaWhiteA700)))
                                        ]))),
                            SizedBox(height: 2.v),
                            Text("msg_comfortable_and".tr,
                                style: CustomTextStyles.titleLargeHomenaje)
                          ])))));
    });
  }
}
