import 'bloc/onboarding_two_bloc.dart';
import 'models/onboarding_two_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingTwoBloc>(
      create: (context) => OnboardingTwoBloc(OnboardingTwoState(
        onboardingTwoModelObj: OnboardingTwoModel(),
      ))
        ..add(OnboardingTwoInitialEvent()),
      child: OnboardingTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingTwoBloc, OnboardingTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(34.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Spacer(
                    flex: 45,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img75342033670545,
                    height: 224.v,
                    width: 307.h,
                  ),
                  SizedBox(height: 62.v),
                  Text(
                    "msg_tracking_realtime".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 29.v),
                  Container(
                    width: 285.h,
                    margin: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Text(
                      "msg_lorem_ipsum_dolor".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeInterPrimaryContainer,
                    ),
                  ),
                  Spacer(
                    flex: 54,
                  ),
                  SizedBox(
                    height: 6.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 2,
                      effect: ScrollingDotsEffect(
                        activeDotColor: Color(0X1212121D),
                        dotHeight: 6.v,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
