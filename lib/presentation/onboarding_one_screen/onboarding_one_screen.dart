import 'bloc/onboarding_one_bloc.dart';
import 'models/onboarding_one_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingOneBloc>(
      create: (context) => OnboardingOneBloc(OnboardingOneState(
        onboardingOneModelObj: OnboardingOneModel(),
      ))
        ..add(OnboardingOneInitialEvent()),
      child: OnboardingOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingOneBloc, OnboardingOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 29.h,
                vertical: 34.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Spacer(
                    flex: 41,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img90191934064756,
                    height: 250.v,
                    width: 317.h,
                  ),
                  SizedBox(height: 61.v),
                  Text(
                    "lbl_accept_a_job".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 36.v),
                  Container(
                    width: 285.h,
                    margin: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Text(
                      "msg_lorem_ipsum_dolor".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeInterPrimaryContainer,
                    ),
                  ),
                  Spacer(
                    flex: 58,
                  ),
                  Container(
                    height: 6.v,
                    width: 90.h,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray50,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                      child: LinearProgressIndicator(
                        value: 0.33,
                        backgroundColor: appTheme.blueGray50,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          appTheme.amberA400,
                        ),
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
