import '../my_history_screen/widgets/jobsummary_item_widget.dart';
import 'bloc/my_history_bloc.dart';
import 'models/jobsummary_item_model.dart';
import 'models/my_history_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_title.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';

class MyHistoryScreen extends StatelessWidget {
  const MyHistoryScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyHistoryBloc>(
        create: (context) =>
            MyHistoryBloc(MyHistoryState(myHistoryModelObj: MyHistoryModel()))
              ..add(MyHistoryInitialEvent()),
        child: MyHistoryScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 768.v,
                          width: 380.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 768.v,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onErrorContainer))),
                            _buildSixtyStack(context),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 21.h, right: 15.h, bottom: 27.v),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          _buildHistory1Stack(context),
                                          SizedBox(height: 24.v),
                                          _buildHistory2Stack(context),
                                          SizedBox(height: 27.v),
                                          _buildHistory3Stack(context)
                                        ])))
                          ]))),
                  _buildMyHistoryRow(context)
                ]))));
  }

  /// Section Widget
  Widget _buildSixtyStack(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 224.v,
            width: 380.h,
            child: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 224.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.amber500))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      height: 46.v,
                      width: 72.h,
                      margin: EdgeInsets.only(left: 83.h, top: 62.v),
                      decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(10.h)))),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      height: 46.v,
                      width: 72.h,
                      margin: EdgeInsets.only(top: 61.v, right: 142.h),
                      decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(10.h)))),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      height: 46.v,
                      width: 72.h,
                      margin: EdgeInsets.only(top: 61.v, right: 59.h),
                      decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(10.h),
                          border: Border.all(
                              color: theme.colorScheme.primary, width: 1.h)))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 104.h, top: 59.v),
                      child: Text("lbl_tue".tr,
                          style: CustomTextStyles.titleMediumGray40003))),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 183.h, top: 58.v, right: 159.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_wed".tr,
                                style: CustomTextStyles.titleMediumGray40003),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("lbl_13".tr,
                                    style: CustomTextStyles
                                        .titleMediumGray40003_1))
                          ]))),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 59.v, right: 75.h),
                      child: Text("lbl_thur".tr,
                          style: CustomTextStyles.titleMediumPrimary18))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 114.h, top: 85.v),
                      child: Text("lbl_122".tr,
                          style: CustomTextStyles.titleMediumGray40003_1))),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 85.v, right: 86.h),
                      child: Text("lbl_14".tr,
                          style: CustomTextStyles.titleMediumPrimary_1))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      height: 46.v,
                      width: 72.h,
                      margin: EdgeInsets.only(top: 62.v),
                      decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(10.h)))),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      height: 46.v,
                      width: 72.h,
                      margin: EdgeInsets.only(top: 61.v),
                      decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(10.h)))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      height: 224.v,
                      child: BlocSelector<MyHistoryBloc, MyHistoryState,
                              MyHistoryModel?>(
                          selector: (state) => state.myHistoryModelObj,
                          builder: (context, myHistoryModelObj) {
                            return ListView.separated(
                                padding: EdgeInsets.fromLTRB(
                                    33.h, 130.v, 19.h, 19.v),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: 18.h);
                                },
                                itemCount: myHistoryModelObj
                                        ?.jobsummaryItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  JobsummaryItemModel model = myHistoryModelObj
                                          ?.jobsummaryItemList[index] ??
                                      JobsummaryItemModel();
                                  return JobsummaryItemWidget(model);
                                });
                          }))),
              CustomAppBar(
                  height: 45.v,
                  leadingWidth: 28.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowLeft,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 7.v, bottom: 12.v),
                      onTap: () {
                        onTapArrowLeft(context);
                      }),
                  title: AppbarTitle(
                      text: "lbl_history".tr,
                      margin: EdgeInsets.only(left: 115.h)))
            ])));
  }

  /// Section Widget
  Widget _buildHistory1Stack(BuildContext context) {
    return SizedBox(
        height: 149.v,
        width: 344.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 4.v),
                  decoration: AppDecoration.outlinePrimaryContainer6
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 13.v),
                        Container(
                            height: 78.v,
                            width: 202.h,
                            margin: EdgeInsets.only(left: 5.h),
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: SizedBox(
                                          height: 49.v,
                                          child: VerticalDivider(
                                              width: 3.h,
                                              thickness: 3.v,
                                              color: appTheme.gray400,
                                              indent: 17.h)))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin:
                                                EdgeInsets.only(bottom: 7.v),
                                            padding: EdgeInsets.all(3.h),
                                            decoration: AppDecoration
                                                .outlineAmber
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Container(
                                                height: 10.adaptSize,
                                                width: 10.adaptSize,
                                                decoration: BoxDecoration(
                                                    color: appTheme.amber500,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.h)))),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.h),
                                            child: Text(
                                                "msg_7958_swift_village".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeHindSiliguriPrimaryContainer))
                                      ])),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      padding:
                                          EdgeInsets.only(left: 1.h, top: 48.v),
                                      child: IntrinsicWidth(
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgLinkedinPrimarycontainer24x18,
                                                          height: 24.v,
                                                          width: 18.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 6.v)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15.h,
                                                                  top: 2.v),
                                                          child: Text(
                                                              "msg_105_william_st"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeHindSiliguriPrimaryContainer))
                                                    ])),
                                            SizedBox(height: 10.v),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Divider())
                                          ]))))
                            ])),
                        SizedBox(height: 18.v),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconsMoney1,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.h, top: 4.v, bottom: 5.v),
                                  child: Text("lbl_25_00".tr,
                                      style: CustomTextStyles.bodyLarge_1)),
                              Spacer(),
                              Container(
                                  width: 77.h,
                                  margin: EdgeInsets.symmetric(vertical: 5.v),
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("lbl_confirm".tr,
                                            style: CustomTextStyles
                                                .bodyMediumRobotoIndigoA400)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(left: 3.h))
                                  ]))
                            ]))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 39.v),
                  child: SizedBox(width: 344.h, child: Divider())))
        ]));
  }

  /// Section Widget
  Widget _buildHistory2Stack(BuildContext context) {
    return SizedBox(
        height: 149.v,
        width: 344.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 6.v),
                  decoration: AppDecoration.outlinePrimaryContainer6
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 9.v),
                        Container(
                            height: 78.v,
                            width: 193.h,
                            margin: EdgeInsets.only(left: 5.h),
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: SizedBox(
                                          height: 49.v,
                                          child: VerticalDivider(
                                              width: 3.h,
                                              thickness: 3.v,
                                              color: appTheme.gray400,
                                              indent: 17.h)))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin:
                                                EdgeInsets.only(bottom: 7.v),
                                            padding: EdgeInsets.all(3.h),
                                            decoration: AppDecoration
                                                .outlineAmber
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Container(
                                                height: 10.adaptSize,
                                                width: 10.adaptSize,
                                                decoration: BoxDecoration(
                                                    color: appTheme.amber500,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.h)))),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.h),
                                            child: Text(
                                                "msg_62_kobe_trafficway".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeHindSiliguriPrimaryContainer))
                                      ])),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      padding:
                                          EdgeInsets.only(left: 1.h, top: 48.v),
                                      child: IntrinsicWidth(
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgLinkedinPrimarycontainer24x18,
                                                          height: 24.v,
                                                          width: 18.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 5.v)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15.h),
                                                          child: Text(
                                                              "msg_280_icie_park_suit"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeHindSiliguriPrimaryContainer))
                                                    ])),
                                            SizedBox(height: 10.v),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Divider())
                                          ]))))
                            ])),
                        SizedBox(height: 19.v),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 88.h,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIconsMoney1,
                                                height: 30.adaptSize,
                                                width: 30.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 4.v, bottom: 5.v),
                                                child: Text("lbl_25_00".tr,
                                                    style: CustomTextStyles
                                                        .bodyLarge_1))
                                          ])),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.v),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.v),
                                                child: Text("lbl_completed".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumRobotoGreenA400)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowRight,
                                                height: 20.adaptSize,
                                                width: 20.adaptSize,
                                                margin:
                                                    EdgeInsets.only(left: 3.h))
                                          ]))
                                ]))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 42.v),
                  child: SizedBox(width: 344.h, child: Divider())))
        ]));
  }

  /// Section Widget
  Widget _buildHistory3Stack(BuildContext context) {
    return SizedBox(
        height: 149.v,
        width: 344.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 6.v),
                  decoration: AppDecoration.outlinePrimaryContainer6
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 9.v),
                        Container(
                            height: 78.v,
                            width: 193.h,
                            margin: EdgeInsets.only(left: 5.h),
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 9.h),
                                          child: SizedBox(
                                              height: 49.v,
                                              child: VerticalDivider(
                                                  width: 3.h,
                                                  thickness: 3.v,
                                                  color: appTheme.gray400,
                                                  indent: 17.h)))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 6.v),
                                                padding: EdgeInsets.all(3.h),
                                                decoration: AppDecoration
                                                    .outlineAmber500
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder8),
                                                child: Container(
                                                    height: 10.adaptSize,
                                                    width: 10.adaptSize,
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .amber500,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5.h)))),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 14.h),
                                                child: Text(
                                                    "msg_280_icie_park_suit".tr,
                                                    style: CustomTextStyles
                                                        .bodyLargeHindSiliguriPrimaryContainer))
                                          ])),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          padding: EdgeInsets.only(
                                              left: 1.h,
                                              top: 48.v,
                                              right: 19.h),
                                          child: IntrinsicWidth(
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgLinkedinPrimarycontainer24x18,
                                                              height: 24.v,
                                                              width: 18.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          6.v)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          15.h,
                                                                      top: 2.v),
                                                              child: Text(
                                                                  "msg_62_kobe_trafficway"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .bodyLargeHindSiliguriPrimaryContainer))
                                                        ])),
                                                SizedBox(height: 10.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Divider())
                                              ]))))
                                ])),
                        SizedBox(height: 18.v),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconsMoney1,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.h, top: 4.v, bottom: 5.v),
                                  child: Text("lbl_20_00".tr,
                                      style: CustomTextStyles.bodyLarge_1)),
                              Spacer(),
                              Container(
                                  width: 89.h,
                                  margin: EdgeInsets.symmetric(vertical: 5.v),
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("lbl_cancelled".tr,
                                            style: CustomTextStyles
                                                .bodyMediumRobotoGray40015)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(left: 3.h))
                                  ]))
                            ]))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 41.v),
                  child: SizedBox(width: 344.h, child: Divider())))
        ]));
  }

  /// Section Widget
  Widget _buildMyHistoryRow(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.fromLTRB(9.h, 58.v, 9.h, 659.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 23.v),
                      child: Text("lbl_mon".tr,
                          style: CustomTextStyles.titleMediumGray40003)),
                  Padding(
                      padding: EdgeInsets.only(top: 26.v),
                      child: Text("lbl_11".tr,
                          style: CustomTextStyles.titleMediumGray40003_1)),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(bottom: 23.v),
                      child: Text("lbl_fri".tr,
                          style: CustomTextStyles.titleMediumGray40003)),
                  Padding(
                      padding: EdgeInsets.only(top: 25.v, right: 3.h),
                      child: Text("lbl_152".tr,
                          style: CustomTextStyles.titleMediumGray40003_1))
                ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
