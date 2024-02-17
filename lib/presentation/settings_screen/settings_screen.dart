import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: 377.h,
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: Container(
                      decoration: AppDecoration.fillOnErrorContainer,
                      child: Column(children: [
                        _buildAppBar(context),
                        SizedBox(height: 19.v),
                        _buildAvatar(context),
                        SizedBox(height: 20.v),
                        _buildLogOut(context),
                        SizedBox(height: 20.v)
                      ])))));
    });
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 13.v),
        decoration: AppDecoration.fillAmber,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomAppBar(
              leadingWidth: 377.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 17.h, right: 348.h),
                  onTap: () {
                    onTapArrowLeft(context);
                  })),
          SizedBox(height: 17.v),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child:
                  Text("lbl_settings".tr, style: theme.textTheme.displaySmall)),
          SizedBox(height: 11.v)
        ]));
  }

  /// Section Widget
  Widget _buildAvatar(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 14.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAvatar60x60,
              height: 60.adaptSize,
              width: 60.adaptSize,
              radius: BorderRadius.circular(30.h)),
          Padding(
              padding: EdgeInsets.only(left: 23.h, top: 8.v, bottom: 8.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_martha_banker".tr,
                        style: CustomTextStyles
                            .titleLargeRobotoBluegray900Regular),
                    Text("lbl_gold_member".tr,
                        style: CustomTextStyles.bodyMediumRobotoBluegray400)
                  ])),
          Container(
              height: 44.v,
              width: 124.h,
              margin: EdgeInsets.only(left: 17.h, top: 8.v, bottom: 8.v),
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
              decoration: AppDecoration.fillWhiteA,
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimarycontainer,
                  height: 13.v,
                  width: 8.h,
                  alignment: Alignment.topRight))
        ]));
  }

  /// Section Widget
  Widget _buildLogOut(BuildContext context) {
    return SizedBox(
        height: 372.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 127.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: 44.v,
                            width: double.maxFinite,
                            decoration: AppDecoration.fillWhiteA,
                            child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                          width: 359.h,
                                          child: Divider(
                                              color: appTheme.blueGray50))),
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgArrowRightPrimarycontainer,
                                      height: 13.v,
                                      width: 8.h,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 16.h)),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 39.h, bottom: 10.v),
                                          child: Text(
                                              "msg_vehicle_management".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900)))
                                ]))),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 46.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                        height: 45.v,
                                                        width: 124.h,
                                                        padding: EdgeInsets.all(
                                                            16.h),
                                                        decoration:
                                                            AppDecoration
                                                                .fillWhiteA,
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgArrowRightPrimarycontainer,
                                                            height: 13.v,
                                                            width: 8.h,
                                                            alignment: Alignment
                                                                .centerRight))),
                                                Divider(
                                                    color: appTheme.blueGray50,
                                                    indent: 16.h)
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          height: 45.v,
                                          width: 190.h,
                                          margin: EdgeInsets.only(left: 24.h),
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Container(
                                                        height: 45.v,
                                                        width: 170.h,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .whiteA700))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 10.v),
                                                        child: Text(
                                                            "msg_document_management"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyLargeBlack900)))
                                              ])))
                                ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                            height: 45.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Align(
                                                    alignment: Alignment
                                                        .centerRight,
                                                    child: Container(
                                                        height: 44.v,
                                                        width: 124.h,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    16.h,
                                                                vertical: 15.v),
                                                        decoration:
                                                            AppDecoration
                                                                .fillWhiteA,
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgArrowRightPrimarycontainer,
                                                            height: 13.v,
                                                            width: 8.h,
                                                            alignment: Alignment
                                                                .topRight))),
                                                Divider(
                                                    color: appTheme.blueGray50)
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              left: 24.h, right: 181.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.h, vertical: 11.v),
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Text("lbl_reviews".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgStar1,
                                      height: 25.adaptSize,
                                      width: 25.adaptSize,
                                      alignment: Alignment.topLeft,
                                      margin:
                                          EdgeInsets.only(left: 7.h, top: 7.v))
                                ])))
                  ]))),
          Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCar1,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        margin: EdgeInsets.only(left: 7.h)),
                    SizedBox(height: 16.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgIdCard1,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        margin: EdgeInsets.only(left: 7.h)),
                    SizedBox(height: 45.v),
                    SizedBox(
                        height: 195.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                        height: 47.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 17.h,
                                                              vertical: 11.v),
                                                      decoration: AppDecoration
                                                          .fillWhiteA,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            SizedBox(
                                                                height: 10.v),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgArrowRightPrimarycontainer,
                                                                height: 12.v,
                                                                width: 8.h)
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 24.h,
                                                          right: 181.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15.h,
                                                              vertical: 8.v),
                                                      decoration: AppDecoration
                                                          .fillWhiteA,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                                height: 3.v),
                                                            Text(
                                                                "lbl_language"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeBlack900)
                                                          ]))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGlobal1,
                                                  height: 25.adaptSize,
                                                  width: 25.adaptSize,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 7.h, top: 7.v))
                                            ])),
                                    SizedBox(height: 21.v),
                                    SizedBox(
                                        height: 45.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 44.v,
                                                      width: double.maxFinite,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .whiteA700))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      height: 44.v,
                                                      width: 124.h,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 16.h,
                                                              vertical: 15.v),
                                                      decoration: AppDecoration
                                                          .fillWhiteA,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgArrowRightPrimarycontainer,
                                                          height: 13.v,
                                                          width: 8.h,
                                                          alignment: Alignment
                                                              .topRight))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 24.h,
                                                          right: 181.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15.h,
                                                              vertical: 11.v),
                                                      decoration: AppDecoration
                                                          .fillWhiteA,
                                                      child: Text(
                                                          "lbl_notifications"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .bodyLargeBlack900))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgBell1,
                                                  height: 25.adaptSize,
                                                  width: 25.adaptSize,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 8.h, top: 7.v))
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 50.v,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(bottom: 38.v),
                                  decoration: AppDecoration.fillWhiteA,
                                  child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                                width: 359.h,
                                                child: Divider(
                                                    color:
                                                        appTheme.blueGray50))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgArrowRightPrimarycontainer,
                                            height: 13.v,
                                            width: 8.h,
                                            alignment: Alignment.centerRight,
                                            margin:
                                                EdgeInsets.only(right: 16.h)),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 39.h, bottom: 13.v),
                                                child: Text(
                                                    "msg_terms_privacy".tr,
                                                    style: CustomTextStyles
                                                        .bodyLargeBlack900))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgCrown1,
                                            height: 25.adaptSize,
                                            width: 25.adaptSize,
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(
                                                left: 8.h, top: 10.v))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 44.v,
                                  width: double.maxFinite,
                                  decoration: AppDecoration.fillWhiteA,
                                  child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                                width: double.maxFinite,
                                                child: Divider(
                                                    color:
                                                        appTheme.blueGray50))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgArrowRightPrimarycontainer,
                                            height: 13.v,
                                            width: 8.h,
                                            alignment: Alignment.centerRight,
                                            margin:
                                                EdgeInsets.only(right: 16.h)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 39.h),
                                                child: Text("lbl_contact_us".tr,
                                                    style: CustomTextStyles
                                                        .bodyLargeBlack900))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgQuestionMark1,
                                            height: 25.adaptSize,
                                            width: 25.adaptSize,
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(
                                                left: 9.h, top: 7.v))
                                      ])))
                        ])),
                    SizedBox(height: 13.v),
                    CustomElevatedButton(
                        text: "lbl_log_out".tr,
                        buttonStyle: CustomButtonStyles.fillWhiteA,
                        buttonTextStyle: CustomTextStyles.bodyLargeGray400)
                  ]))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
