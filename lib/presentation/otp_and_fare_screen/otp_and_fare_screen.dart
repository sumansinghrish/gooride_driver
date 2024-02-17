import 'bloc/otp_and_fare_bloc.dart';
import 'models/otp_and_fare_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';
import 'package:gooridedriver/widgets/custom_text_form_field.dart';

class OtpAndFareScreen extends StatelessWidget {
  const OtpAndFareScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OtpAndFareBloc>(
        create: (context) => OtpAndFareBloc(
            OtpAndFareState(otpAndFareModelObj: OtpAndFareModel()))
          ..add(OtpAndFareInitialEvent()),
        child: OtpAndFareScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: 382.h,
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(right: 5.h),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Column(children: [
                      _buildAppBar(context),
                      SizedBox(height: 7.v),
                      _buildHeader(context),
                      SizedBox(height: 13.v),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 11.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 18.v),
                          decoration: AppDecoration.outlinePrimaryContainer6
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 4.v),
                                _buildPickupLocation(context),
                                SizedBox(height: 10.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Divider(
                                        color: appTheme.gray200,
                                        indent: 30.h,
                                        endIndent: 19.h)),
                                SizedBox(height: 13.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 35.h),
                                    child: Text(
                                        "lbl_trip_fare".tr.toUpperCase(),
                                        style: CustomTextStyles
                                            .bodyMediumGray400)),
                                SizedBox(height: 2.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 35.h, right: 47.h),
                                    child: _buildDiscountSection(context,
                                        discountText: "lbl_google_pay".tr,
                                        priceText: "lbl_15".tr)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 35.h, right: 46.h),
                                    child: _buildDiscountSection(context,
                                        discountText: "lbl_discount".tr,
                                        priceText: "lbl_10".tr)),
                                SizedBox(height: 1.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 35.h, right: 44.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_paid_amount".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium),
                                              Text("lbl_25".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium)
                                            ]))),
                                SizedBox(height: 25.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Divider(
                                        color: appTheme.gray200,
                                        indent: 35.h,
                                        endIndent: 14.h)),
                                SizedBox(height: 34.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 28.h, right: 8.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                  width: 86.h,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 16.h,
                                                      vertical: 10.v),
                                                  decoration: AppDecoration
                                                      .outlineGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgIcons8Call501,
                                                            height:
                                                                16.adaptSize,
                                                            width: 16.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 4.v,
                                                                    bottom:
                                                                        3.v)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 3.v),
                                                            child: Text(
                                                                "lbl_call"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge))
                                                      ])),
                                              Container(
                                                  width: 99.h,
                                                  margin: EdgeInsets.only(
                                                      left: 9.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 9.h,
                                                      vertical: 10.v),
                                                  decoration: AppDecoration
                                                      .outlineGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgIcons8Message30,
                                                            height:
                                                                17.adaptSize,
                                                            width: 17.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 4.v,
                                                                    bottom:
                                                                        3.v)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 2.h,
                                                                    top: 3.v),
                                                            child: Text(
                                                                "lbl_message"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge))
                                                      ])),
                                              Container(
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      left: 9.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 6.h,
                                                      vertical: 10.v),
                                                  decoration: AppDecoration
                                                      .outlineGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgIcons8Delete30,
                                                        height: 17.adaptSize,
                                                        width: 17.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            top: 4.v,
                                                            bottom: 3.v)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 3.v),
                                                        child: Text(
                                                            "lbl_cancel"
                                                                .tr
                                                                .toUpperCase(),
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge))
                                                  ]))
                                            ]))),
                                SizedBox(height: 50.v),
                                CustomElevatedButton(
                                    text: "lbl_go_to_pickup".tr,
                                    margin:
                                        EdgeInsets.only(left: 28.h, right: 8.h),
                                    buttonTextStyle:
                                        CustomTextStyles.titleLargeBold,
                                    alignment: Alignment.centerRight)
                              ])),
                      SizedBox(height: 72.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 61.v,
        leadingWidth: 29.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 17.h, top: 20.v, bottom: 21.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "lbl_123456".tr),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL16),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAvatar,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(25.h),
              margin: EdgeInsets.only(top: 9.v)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 11.v, bottom: 4.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_earl_berry".tr,
                        style:
                            CustomTextStyles.bodyLargeHomenajePrimaryContainer),
                    SizedBox(height: 5.v),
                    SizedBox(
                        width: 151.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 17.v,
                                  width: 73.h,
                                  margin: EdgeInsets.only(top: 1.v),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: 14.v,
                                                width: 73.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.amberA400,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7.h)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 9.h),
                                                child: Text("lbl_google_pay".tr,
                                                    style: theme.textTheme
                                                        .labelMedium)))
                                      ])),
                              SizedBox(
                                  height: 17.v,
                                  width: 73.h,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: 14.v,
                                                width: 73.h,
                                                margin:
                                                    EdgeInsets.only(top: 1.v),
                                                decoration: BoxDecoration(
                                                    color: appTheme.amberA400,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7.h)))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("lbl_discount".tr,
                                                style: theme
                                                    .textTheme.labelMedium))
                                      ]))
                            ]))
                  ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 9.v, right: 21.h, bottom: 5.v),
              child: Column(children: [
                Text("lbl_25_00".tr, style: theme.textTheme.titleMedium),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: Text("lbl_2_2_km".tr,
                            style: CustomTextStyles.bodyMediumGray600)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildPickupLocation(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 19.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 86.v),
              child: Column(children: [
                SizedBox(
                    height: 58.v,
                    width: 20.h,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                              height: 41.v,
                              child: VerticalDivider(
                                  width: 2.h,
                                  thickness: 2.v,
                                  color: appTheme.gray400))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgContrastWhiteA700,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    alignment: Alignment.center),
                                CustomImageView(
                                    imagePath: ImageConstant.imgCloseAmberA400,
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    alignment: Alignment.center)
                              ])))
                    ])),
                SizedBox(height: 3.v),
                CustomImageView(
                    imagePath: ImageConstant.imgLinkedinPrimary,
                    height: 24.v,
                    width: 18.h)
              ])),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("lbl_pickup".tr.toUpperCase(),
                                style: CustomTextStyles
                                    .bodyMediumSFUIDisplayGray400)),
                        SizedBox(height: 1.v),
                        Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: BlocSelector<OtpAndFareBloc, OtpAndFareState,
                                    TextEditingController?>(
                                selector: (state) =>
                                    state.pickupLocationController,
                                builder: (context, pickupLocationController) {
                                  return CustomTextFormField(
                                      controller: pickupLocationController,
                                      hintText: "msg_7958_swift_village".tr,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 5.h));
                                })),
                        Divider(color: appTheme.gray200, endIndent: 1.h),
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("lbl_drop_off".tr.toUpperCase(),
                                style: CustomTextStyles
                                    .bodyMediumSFUIDisplayGray400)),
                        BlocSelector<OtpAndFareBloc, OtpAndFareState,
                                TextEditingController?>(
                            selector: (state) =>
                                state.dropoffLocationController,
                            builder: (context, dropoffLocationController) {
                              return CustomTextFormField(
                                  controller: dropoffLocationController,
                                  hintText: "msg_105_william_st".tr,
                                  textInputAction: TextInputAction.done,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 4.h));
                            }),
                        SizedBox(height: 7.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("lbl_noted".tr.toUpperCase(),
                                style: CustomTextStyles.bodyMediumGray400)),
                        Container(
                            width: 154.h,
                            margin: EdgeInsets.only(left: 6.h),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMedium13))
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildDiscountSection(
    BuildContext context, {
    required String discountText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(discountText,
          style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primaryContainer.withOpacity(1))),
      Text(priceText,
          style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primaryContainer.withOpacity(1)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
