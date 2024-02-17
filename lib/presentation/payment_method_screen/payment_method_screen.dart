import 'bloc/payment_method_bloc.dart';
import 'models/payment_method_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';
import 'package:gooridedriver/widgets/custom_icon_button.dart';
import 'package:gooridedriver/widgets/custom_text_form_field.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentMethodBloc>(
        create: (context) => PaymentMethodBloc(
            PaymentMethodState(paymentMethodModelObj: PaymentMethodModel()))
          ..add(PaymentMethodInitialEvent()),
        child: PaymentMethodScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: 384.h,
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: Container(
                    margin: EdgeInsets.only(right: 1.h),
                    decoration: AppDecoration.fillOnErrorContainer,
                    child: Column(children: [
                      _buildAppBar(context),
                      SizedBox(height: 20.v),
                      _buildCreditCard(context),
                      SizedBox(height: 53.v),
                      CustomImageView(
                          imagePath:
                              ImageConstant.imgIconsMoney1Primarycontainer30x30,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 46.h)),
                      SizedBox(height: 55.v),
                      CustomElevatedButton(
                          height: 60.v,
                          text: "lbl_add_new_method".tr,
                          margin: EdgeInsets.only(left: 16.h, right: 15.h),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 11.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgPlus,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          buttonStyle: CustomButtonStyles.fillAmber,
                          buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700),
                      SizedBox(height: 55.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return SizedBox(
        height: 204.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 11.v),
                  decoration: AppDecoration.fillAmber,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomAppBar(
                            height: 23.v,
                            leadingWidth: 32.h,
                            leading: AppbarLeadingImage(
                                imagePath: ImageConstant.imgArrowLeft,
                                margin: EdgeInsets.only(
                                    left: 20.h, top: 1.v, bottom: 1.v),
                                onTap: () {
                                  onTapArrowLeft(context);
                                }),
                            actions: [
                              AppbarSubtitleOne(
                                  text: "lbl_done".tr,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 20.h))
                            ]),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl_payment_method".tr,
                                style: theme.textTheme.displaySmall)),
                        SizedBox(height: 56.v)
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 15.h, top: 116.v, right: 15.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
                  decoration: AppDecoration.outlinePrimaryContainer2
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(children: [
                    CustomIconButton(
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.fillAmber,
                        child: CustomImageView(
                            imagePath:
                                ImageConstant.imgIconsMoney1Primarycontainer)),
                    Padding(
                        padding: EdgeInsets.only(left: 17.h, bottom: 2.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_cash".tr,
                                  style: theme.textTheme.bodyLarge),
                              SizedBox(height: 6.v),
                              Text("msg_default_payment".tr,
                                  style: CustomTextStyles.bodyLargeGray400_1)
                            ]))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildCreditCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 32.v),
        decoration: AppDecoration.outlinePrimaryContainer2
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_credit_card".tr.toUpperCase(),
                  style: CustomTextStyles.bodyMediumRobotoGray90015),
              SizedBox(height: 13.v),
              BlocSelector<PaymentMethodBloc, PaymentMethodState,
                      TextEditingController?>(
                  selector: (state) => state.creditCardNumberController,
                  builder: (context, creditCardNumberController) {
                    return CustomTextFormField(
                        controller: creditCardNumberController,
                        hintText: "msg_5967".tr,
                        hintStyle: CustomTextStyles.bodyLargeGray900_1,
                        prefix: Container(
                            margin: EdgeInsets.fromLTRB(10.h, 17.v, 11.h, 17.v),
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgTelevisionPrimarycontainer,
                                height: 23.v,
                                width: 30.h)),
                        prefixConstraints: BoxConstraints(maxHeight: 58.v),
                        contentPadding: EdgeInsets.only(
                            top: 19.v, right: 30.h, bottom: 19.v));
                  }),
              SizedBox(height: 10.v),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 13.v),
                  decoration: AppDecoration.outlineAmber5001
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 30.v,
                            width: 25.h),
                        Padding(
                            padding: EdgeInsets.only(top: 6.v, bottom: 3.v),
                            child: Text("msg_wilson_casper_bernice_info".tr,
                                style: CustomTextStyles.bodyLargeGray900_1)),
                        CustomImageView(
                            imagePath: ImageConstant.imgCheckmarkAmber500,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 3.v))
                      ])),
              SizedBox(height: 10.v),
              BlocSelector<PaymentMethodBloc, PaymentMethodState,
                      TextEditingController?>(
                  selector: (state) => state.creditCardNumberController1,
                  builder: (context, creditCardNumberController1) {
                    return CustomTextFormField(
                        controller: creditCardNumberController1,
                        hintText: "msg_3461".tr,
                        hintStyle: CustomTextStyles.bodyLargeGray900_1,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                            margin: EdgeInsets.fromLTRB(10.h, 17.v, 11.h, 17.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgLock,
                                height: 23.v,
                                width: 30.h)),
                        prefixConstraints: BoxConstraints(maxHeight: 58.v),
                        contentPadding: EdgeInsets.only(
                            top: 19.v, right: 30.h, bottom: 19.v));
                  })
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
