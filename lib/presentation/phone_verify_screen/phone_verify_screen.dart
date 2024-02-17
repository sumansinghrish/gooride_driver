import 'bloc/phone_verify_bloc.dart';
import 'models/phone_verify_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';
import 'package:gooridedriver/widgets/custom_pin_code_text_field.dart';

class PhoneVerifyScreen extends StatelessWidget {
  const PhoneVerifyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PhoneVerifyBloc>(
      create: (context) => PhoneVerifyBloc(PhoneVerifyState(
        phoneVerifyModelObj: PhoneVerifyModel(),
      ))
        ..add(PhoneVerifyInitialEvent()),
      child: PhoneVerifyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildPhoneVerifyColumn(context),
              Container(
                padding: EdgeInsets.only(
                  left: 35.h,
                  top: 76.v,
                  right: 35.h,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: BlocSelector<PhoneVerifyBloc, PhoneVerifyState,
                          TextEditingController?>(
                        selector: (state) => state.otpController,
                        builder: (context, otpController) {
                          return CustomPinCodeTextField(
                            context: context,
                            controller: otpController,
                            onChanged: (value) {
                              otpController?.text = value;
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 73.v),
                    CustomElevatedButton(
                      text: "lbl_verify_now".tr,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneVerifyColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            leadingWidth: double.maxFinite,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgChevron,
              margin: EdgeInsets.only(
                left: 16.h,
                right: 347.h,
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "msg_phone_verification".tr,
              style: CustomTextStyles.displaySmallSFProDisplay,
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "msg_enter_your_otp_code".tr,
              style: CustomTextStyles.bodyLargeSFUIDisplayWhiteA700,
            ),
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
