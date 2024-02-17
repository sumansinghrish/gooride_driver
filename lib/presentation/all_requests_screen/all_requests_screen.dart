import 'bloc/all_requests_bloc.dart';
import 'models/all_requests_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_subtitle.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_text_form_field.dart';

class AllRequestsScreen extends StatelessWidget {
  const AllRequestsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AllRequestsBloc>(
      create: (context) => AllRequestsBloc(AllRequestsState(
        allRequestsModelObj: AllRequestsModel(),
      ))
        ..add(AllRequestsInitialEvent()),
      child: AllRequestsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700.withOpacity(0.82),
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 9.v),
              _buildFirstRequest(context),
              SizedBox(height: 14.v),
              _buildSecondRequest(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildThirdRequest(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 36.v,
      title: AppbarSubtitle(
        text: "msg_you_have_10_new".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(top: 9.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 11.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_earl_berry".tr,
                  style: CustomTextStyles.bodyLargeHomenajePrimaryContainer,
                ),
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
                                  borderRadius: BorderRadius.circular(
                                    7.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text(
                                  "lbl_google_pay".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                                margin: EdgeInsets.only(top: 1.v),
                                decoration: BoxDecoration(
                                  color: appTheme.amberA400,
                                  borderRadius: BorderRadius.circular(
                                    7.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_discount".tr,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              right: 21.h,
              bottom: 5.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_25_00".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: Text(
                      "lbl_2_2_km".tr,
                      style: CustomTextStyles.bodyMediumGray600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstRequest(BuildContext context) {
    return SizedBox(
      height: 354.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 19.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 130.v,
                    width: 336.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 130.v,
                            width: 336.h,
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: theme.colorScheme.primaryContainer,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 58.v,
                                      width: 20.h,
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgLine3,
                                            height: 41.v,
                                            width: 2.h,
                                            alignment: Alignment.bottomCenter,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgOval,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                            alignment: Alignment.topCenter,
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgOvalAmberA400,
                                            height: 10.adaptSize,
                                            width: 10.adaptSize,
                                            alignment: Alignment.topCenter,
                                            margin: EdgeInsets.only(top: 4.v),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 3.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgOvalPrimary,
                                      height: 24.v,
                                      width: 18.h,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_pickup".tr.toUpperCase(),
                                        style: CustomTextStyles
                                            .bodyMediumSFUIDisplayGray400,
                                      ),
                                      SizedBox(height: 1.v),
                                      BlocSelector<
                                          AllRequestsBloc,
                                          AllRequestsState,
                                          TextEditingController?>(
                                        selector: (state) =>
                                            state.swiftVillageController,
                                        builder:
                                            (context, swiftVillageController) {
                                          return CustomTextFormField(
                                            controller: swiftVillageController,
                                            hintText:
                                                "msg_7958_swift_village".tr,
                                          );
                                        },
                                      ),
                                      SizedBox(height: 4.v),
                                      Text(
                                        "lbl_drop_off".tr.toUpperCase(),
                                        style: CustomTextStyles
                                            .bodyMediumSFUIDisplayGray400,
                                      ),
                                      Text(
                                        "msg_105_william_st".tr,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 94.v),
                  SizedBox(
                    height: 130.v,
                    width: 336.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 130.v,
                            width: 336.h,
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: theme.colorScheme.primaryContainer,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              right: 305.h,
                              bottom: 17.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgLine3,
                                  height: 41.v,
                                  width: 2.h,
                                ),
                                SizedBox(height: 2.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgOvalPrimary,
                                  height: 24.v,
                                  width: 18.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgOval,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 11.h,
                            top: 22.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgOvalAmberA400,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 27.v,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 39.h,
                              top: 18.v,
                              right: 21.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_pickup".tr.toUpperCase(),
                                  style: CustomTextStyles
                                      .bodyMediumSFUIDisplayGray400,
                                ),
                                SizedBox(height: 1.v),
                                BlocSelector<AllRequestsBloc, AllRequestsState,
                                    TextEditingController?>(
                                  selector: (state) =>
                                      state.kobeTrafficwayController,
                                  builder: (context, kobeTrafficwayController) {
                                    return CustomTextFormField(
                                      controller: kobeTrafficwayController,
                                      hintText: "msg_62_kobe_trafficway".tr,
                                    );
                                  },
                                ),
                                Divider(
                                  color: appTheme.gray200,
                                ),
                                SizedBox(height: 4.v),
                                Text(
                                  "lbl_drop_off".tr.toUpperCase(),
                                  style: CustomTextStyles
                                      .bodyMediumSFUIDisplayGray400,
                                ),
                                Text(
                                  "msg_280_icie_park_suit".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(vertical: 139.v),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL16,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAvatar,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                    margin: EdgeInsets.only(top: 3.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 3.v,
                      bottom: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_callie_greer".tr,
                          style: CustomTextStyles
                              .bodyLargeHomenajePrimaryContainer,
                        ),
                        SizedBox(height: 7.v),
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
                                          borderRadius: BorderRadius.circular(
                                            7.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: Text(
                                          "lbl_google_pay".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                                        margin: EdgeInsets.only(top: 1.v),
                                        decoration: BoxDecoration(
                                          color: appTheme.amberA400,
                                          borderRadius: BorderRadius.circular(
                                            7.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_discount".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      right: 20.h,
                      bottom: 5.v,
                    ),
                    child: _buildPrice(
                      context,
                      price: "lbl_20_00".tr,
                      distance: "lbl_1_5_km".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSecondRequest(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(top: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_callie_greer".tr,
                  style: CustomTextStyles.bodyLargeHomenajePrimaryContainer,
                ),
                SizedBox(height: 7.v),
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
                                  borderRadius: BorderRadius.circular(
                                    7.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text(
                                  "lbl_google_pay".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                                margin: EdgeInsets.only(top: 1.v),
                                decoration: BoxDecoration(
                                  color: appTheme.amberA400,
                                  borderRadius: BorderRadius.circular(
                                    7.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_discount".tr,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              right: 20.h,
              bottom: 5.v,
            ),
            child: _buildPrice(
              context,
              price: "lbl_10_00".tr,
              distance: "lbl_0_5_km".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirdRequest(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 32.h,
        right: 40.h,
        bottom: 74.v,
      ),
      decoration: AppDecoration.outlinePrimaryContainer6.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        decoration: AppDecoration.outlinePrimaryContainer6.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgContrastWhiteA700,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCloseAmberA400,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 42.v,
                    child: VerticalDivider(
                      width: 2.h,
                      thickness: 2.v,
                      color: appTheme.gray400,
                      indent: 1.h,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLinkedinPrimary,
                    height: 24.v,
                    width: 18.h,
                    margin: EdgeInsets.only(top: 2.v),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  bottom: 4.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_pickup".tr.toUpperCase(),
                      style: CustomTextStyles.bodyMediumSFUIDisplayGray400,
                    ),
                    BlocSelector<AllRequestsBloc, AllRequestsState,
                        TextEditingController?>(
                      selector: (state) => state.soedadPortsController,
                      builder: (context, soedadPortsController) {
                        return CustomTextFormField(
                          controller: soedadPortsController,
                          hintText: "msg_9906_soedad_ports".tr,
                          textInputAction: TextInputAction.done,
                        );
                      },
                    ),
                    Divider(
                      color: appTheme.gray200,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text(
                        "lbl_drop_off".tr.toUpperCase(),
                        style: CustomTextStyles.bodyMediumSFUIDisplayGray400,
                      ),
                    ),
                    Text(
                      "msg_286_icie_park_suit".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPrice(
    BuildContext context, {
    required String price,
    required String distance,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          price,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.primaryContainer.withOpacity(1),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            distance,
            style: CustomTextStyles.bodyMediumGray600.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
      ],
    );
  }
}
