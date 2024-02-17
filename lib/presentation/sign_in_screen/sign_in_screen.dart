import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';
import 'package:gooridedriver/widgets/custom_phone_number.dart';
import 'package:gooridedriver/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
        create: (context) =>
            SignInBloc(SignInState(signInModelObj: SignInModel()))
              ..add(SignInInitialEvent()),
        child: SignInScreen());
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
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: 666.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          height: 176.v,
                                          width: double.maxFinite,
                                          decoration: BoxDecoration(
                                              color:
                                                  theme.colorScheme.primary))),
                                  _buildLoginForm(context)
                                ]))))),
            bottomNavigationBar: _buildFacebookButton(context)));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 16.h, top: 80.v, right: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 35.v),
            decoration: AppDecoration.outlinePrimaryContainer2
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("msg_login_with_your".tr,
                      style: CustomTextStyles.bodyLargeSFUIDisplay),
                  SizedBox(height: 39.v),
                  BlocBuilder<SignInBloc, SignInState>(
                      builder: (context, state) {
                    return CustomPhoneNumber(
                        country: state.selectedCountry ??
                            CountryPickerUtils.getCountryByPhoneCode('1'),
                        controller: state.phoneNumberController,
                        onTap: (Country value) {
                          context
                              .read<SignInBloc>()
                              .add(ChangeCountryEvent(value: value));
                        });
                  }),
                  SizedBox(height: 44.v),
                  SizedBox(
                      height: 64.v,
                      width: 301.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 74.h),
                                child: SizedBox(
                                    height: 45.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        color: appTheme.blueGray50)))),
                        CustomElevatedButton(
                            width: 301.h,
                            text: "lbl_next".tr,
                            alignment: Alignment.bottomCenter)
                      ])),
                  SizedBox(height: 77.v)
                ])));
  }

  /// Section Widget
  Widget _buildFacebookButton(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFacebookButton(context);
        },
        child: Container(
            margin: EdgeInsets.only(left: 75.h, right: 98.h, bottom: 78.v),
            decoration: AppDecoration.fillBlue
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgFacebook,
                  height: 24.v,
                  width: 12.h),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, bottom: 2.v),
                  child: Text("msg_connect_with_facebook".tr,
                      style: CustomTextStyles.titleMediumSFUIDisplayWhiteA700))
            ])));
  }

  onTapFacebookButton(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
