import 'bloc/onboarding_three_bloc.dart';
import 'models/onboarding_three_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingThreeBloc>(
      create: (context) => OnboardingThreeBloc(OnboardingThreeState(
        onboardingThreeModelObj: OnboardingThreeModel(),
      ))
        ..add(OnboardingThreeInitialEvent()),
      child: OnboardingThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingThreeBloc, OnboardingThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 44.h,
                vertical: 34.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.img29119378StackOf,
                    height: 220.v,
                    width: 266.h,
                  ),
                  SizedBox(height: 80.v),
                  Text(
                    "lbl_earn_money".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 35.v),
                  SizedBox(
                    width: 285.h,
                    child: Text(
                      "msg_lorem_ipsum_dolor".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeInterPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 58.v),
                  CustomElevatedButton(
                    width: 190.h,
                    text: "lbl_get_started".tr.toUpperCase(),
                  ),
                  SizedBox(height: 53.v),
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
