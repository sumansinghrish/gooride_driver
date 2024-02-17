import 'bloc/my_account_bloc.dart';
import 'models/my_account_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/core/utils/validation_functions.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyAccountScreen extends StatelessWidget {
  MyAccountScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<MyAccountBloc>(
        create: (context) =>
            MyAccountBloc(MyAccountState(myAccountModelObj: MyAccountModel()))
              ..add(MyAccountInitialEvent()),
        child: MyAccountScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onErrorContainer,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              _buildTwelve(context),
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 20.v),
                                  child: Column(children: [
                                    Divider(color: appTheme.blueGray50),
                                    _buildCellsTableCell1(context),
                                    SizedBox(height: 20.v),
                                    BlocSelector<MyAccountBloc, MyAccountState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.nameController,
                                        builder: (context, nameController) {
                                          return CustomTextFormField(
                                              controller: nameController,
                                              hintText: "lbl_name".tr,
                                              hintStyle: CustomTextStyles
                                                  .bodyLargeBlack900,
                                              validator: (value) {
                                                if (!isText(value)) {
                                                  return "err_msg_please_enter_valid_text"
                                                      .tr;
                                                }
                                                return null;
                                              },
                                              borderDecoration:
                                                  TextFormFieldStyleHelper
                                                      .fillWhiteA,
                                              filled: true,
                                              fillColor: appTheme.whiteA700);
                                        }),
                                    BlocSelector<MyAccountBloc, MyAccountState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.emailController,
                                        builder: (context, emailController) {
                                          return CustomTextFormField(
                                              controller: emailController,
                                              hintText:
                                                  "msg_gooridemarth88_gmail_com"
                                                      .tr,
                                              hintStyle: CustomTextStyles
                                                  .bodyLargeGray400,
                                              textInputAction:
                                                  TextInputAction.done,
                                              textInputType:
                                                  TextInputType.emailAddress,
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isValidEmail(value,
                                                        isRequired: true))) {
                                                  return "err_msg_please_enter_valid_email"
                                                      .tr;
                                                }
                                                return null;
                                              },
                                              borderDecoration:
                                                  TextFormFieldStyleHelper
                                                      .fillWhiteA,
                                              filled: true,
                                              fillColor: appTheme.whiteA700);
                                        }),
                                    _buildCellsTableCell2(context),
                                    _buildCellsTableCell3(context,
                                        phoneNumberLabel: "lbl_birthday".tr,
                                        phoneNumberText:
                                            "lbl_april_16_1988".tr),
                                    SizedBox(height: 5.v),
                                    _buildCellsTableCell3(context,
                                        phoneNumberLabel: "lbl_phone_number".tr,
                                        phoneNumberText: "lbl_9457663589".tr)
                                  ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 13.v),
        decoration: AppDecoration.fillAmber,
        child: Column(children: [
          CustomAppBar(
              leadingWidth: double.maxFinite,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 16.h, right: 347.h),
                  onTap: () {
                    onTapArrowLeft(context);
                  })),
          SizedBox(height: 11.v),
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 20.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 6.v, bottom: 3.v),
                        child: Text("lbl_my_account".tr,
                            style: theme.textTheme.displaySmall)),
                    CustomImageView(
                        imagePath: ImageConstant.imgAvatar1,
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        radius: BorderRadius.circular(25.h))
                  ])),
          SizedBox(height: 8.v)
        ]));
  }

  /// Section Widget
  Widget _buildCellsTableCell1(BuildContext context) {
    return Container(
        height: 44.v,
        width: double.maxFinite,
        decoration: AppDecoration.fillWhiteA,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(color: appTheme.blueGray50))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimarycontainer,
              height: 13.v,
              width: 8.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 16.h)),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text("lbl_level".tr,
                      style: CustomTextStyles.bodyLargeBlack900))),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 36.h),
                  child: Text("lbl_gold_member".tr,
                      style: CustomTextStyles.bodyLargeGray400)))
        ]));
  }

  /// Section Widget
  Widget _buildCellsTableCell2(BuildContext context) {
    return Container(
        height: 44.v,
        width: double.maxFinite,
        decoration: AppDecoration.fillWhiteA,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimarycontainer,
              height: 13.v,
              width: 8.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 16.h)),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 170.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
                  decoration: AppDecoration.fillWhiteA,
                  child: Text("lbl_gender".tr,
                      style: CustomTextStyles.bodyLargeBlack900))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: 359.h, child: Divider(color: appTheme.blueGray50))),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 37.h),
                  child: Text("lbl_male".tr,
                      style: CustomTextStyles.bodyLargeGray400)))
        ]));
  }

  /// Common widget
  Widget _buildCellsTableCell3(
    BuildContext context, {
    required String phoneNumberLabel,
    required String phoneNumberText,
  }) {
    return Container(
        height: 44.v,
        width: double.maxFinite,
        decoration: AppDecoration.fillWhiteA,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: 359.h, child: Divider(color: appTheme.blueGray50))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimarycontainer,
              height: 13.v,
              width: 8.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 16.h)),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 207.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
                  decoration: AppDecoration.fillWhiteA,
                  child: Text(phoneNumberLabel,
                      style: CustomTextStyles.bodyLargeBlack900
                          .copyWith(color: appTheme.black900)))),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 37.h),
                  child: Text(phoneNumberText,
                      style: CustomTextStyles.bodyLargeGray400
                          .copyWith(color: appTheme.gray400))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
