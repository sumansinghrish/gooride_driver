import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/core/utils/validation_functions.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';
import 'package:gooridedriver/widgets/custom_phone_number.dart';
import 'package:gooridedriver/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 607.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 341.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img25182822703688,
                            height: 268.v,
                            width: 344.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 115.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgLogoGreenA200,
                            height: 127.v,
                            width: 120.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 55.v),
                          ),
                          _buildSignUpColumn(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 99.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_by_clicking_start2".tr,
                            style:
                                CustomTextStyles.bodyMediumSFUIDisplayff4a494a,
                          ),
                          TextSpan(
                            text: "msg_terms_and_conditions".tr,
                            style:
                                CustomTextStyles.labelLargeSFUIDisplayff4a494a,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(vertical: 40.v),
        decoration: AppDecoration.outlinePrimaryContainer2.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.h),
              child:
                  BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
                selector: (state) => state.emailController,
                builder: (context, emailController) {
                  return CustomTextFormField(
                    controller: emailController,
                    hintText: "msg_name_example_com".tr,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_email".tr;
                      }
                      return null;
                    },
                    borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
                  );
                },
              ),
            ),
            SizedBox(height: 9.v),
            Divider(),
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.h),
              child: BlocBuilder<SignUpBloc, SignUpState>(
                builder: (context, state) {
                  return CustomPhoneNumber(
                    country: state.selectedCountry ??
                        CountryPickerUtils.getCountryByPhoneCode('1'),
                    controller: state.phoneNumberController,
                    onTap: (Country value) {
                      context
                          .read<SignUpBloc>()
                          .add(ChangeCountryEvent(value: value));
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 46.v),
            SizedBox(
              height: 52.v,
              width: 301.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 74.h),
                      child: SizedBox(
                        height: 45.v,
                        child: VerticalDivider(
                          width: 2.h,
                          thickness: 2.v,
                          color: appTheme.blueGray50,
                        ),
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    width: 301.h,
                    text: "lbl_sign_up".tr,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
            SizedBox(height: 48.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 65.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_already_have_an2".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_sign_in".tr,
                        style: CustomTextStyles.labelLargeInterff000000,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 7.v),
          ],
        ),
      ),
    );
  }
}
