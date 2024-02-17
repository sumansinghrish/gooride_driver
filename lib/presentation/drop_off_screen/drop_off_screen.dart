import 'bloc/drop_off_bloc.dart';
import 'models/drop_off_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';

class DropOffScreen extends StatelessWidget {
  const DropOffScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DropOffBloc>(
      create: (context) => DropOffBloc(DropOffState(
        dropOffModelObj: DropOffModel(),
      ))
        ..add(DropOffInitialEvent()),
      child: DropOffScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DropOffBloc, DropOffState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 79.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer
                            .withOpacity(0.54),
                      ),
                    ),
                  ),
                  _buildDropOff(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 49.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIcons8TurnRight24,
        margin: EdgeInsets.only(
          left: 36.h,
          top: 14.v,
          bottom: 15.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(
          children: [
            AppbarSubtitleThree(
              text: "lbl_250m".tr,
            ),
            AppbarSubtitleFour(
              text: "msg_turn_right_at_105".tr,
              margin: EdgeInsets.only(
                left: 36.h,
                top: 5.v,
              ),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildDropOff(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 660.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 28.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.customBorderTL11,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50.adaptSize,
                            margin: EdgeInsets.only(top: 1.v),
                            padding: EdgeInsets.symmetric(
                              horizontal: 18.h,
                              vertical: 11.v,
                            ),
                            decoration: AppDecoration.fillOrange.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder25,
                            ),
                            child: Text(
                              "lbl_e".tr,
                              style: CustomTextStyles.titleLargeRobotoRegular22,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              bottom: 8.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_pick_up_at".tr.toUpperCase(),
                                  style: CustomTextStyles.bodyMedium13,
                                ),
                                Text(
                                  "msg_7958_swift_village2".tr.toUpperCase(),
                                  style: theme.textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 29.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 39.h,
                        right: 83.h,
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "lbl_est".tr.toUpperCase(),
                                style: CustomTextStyles.bodyMediumGray400,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_5".tr,
                                      style:
                                          CustomTextStyles.labelLargeff000000,
                                    ),
                                    TextSpan(
                                      text: "lbl_min".tr,
                                      style:
                                          CustomTextStyles.labelLargeff000000,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Spacer(
                            flex: 51,
                          ),
                          Column(
                            children: [
                              Text(
                                "lbl_distance".tr.toUpperCase(),
                                style: CustomTextStyles.bodyMediumGray400,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_2_2".tr,
                                      style:
                                          CustomTextStyles.labelLargeff000000,
                                    ),
                                    TextSpan(
                                      text: "lbl_km".tr,
                                      style:
                                          CustomTextStyles.labelLargeff000000,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Spacer(
                            flex: 48,
                          ),
                          Column(
                            children: [
                              Text(
                                "lbl_fare".tr.toUpperCase(),
                                style: CustomTextStyles.bodyMediumGray400,
                              ),
                              Text(
                                "lbl_25_00".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 18.v),
                    CustomElevatedButton(
                      text: "lbl_drop_off2".tr,
                      margin: EdgeInsets.symmetric(horizontal: 28.h),
                      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 25.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 39.h,
                        right: 61.h,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcons8UpArrow50,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(
                              top: 4.v,
                              bottom: 2.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_head".tr,
                                    style: CustomTextStyles
                                        .bodyLargeHindSiliguriff000000,
                                  ),
                                  TextSpan(
                                    text: "lbl_south".tr,
                                    style: CustomTextStyles
                                        .bodyLargeHindSiliguriff000000,
                                  ),
                                  TextSpan(
                                    text: "lbl_w".tr,
                                    style: CustomTextStyles
                                        .bodyLargeHindSiliguriff000000,
                                  ),
                                  TextSpan(
                                    text: "lbl_est2".tr,
                                    style: CustomTextStyles
                                        .bodyLargeHindSiliguriff000000,
                                  ),
                                  TextSpan(
                                    text: "lbl_on_medison_st".tr,
                                    style: CustomTextStyles
                                        .bodyLargeHindSiliguriff000000,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 66.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_18".tr,
                              style: CustomTextStyles.bodyMediumff6c6b6b,
                            ),
                            TextSpan(
                              text: "lbl_miles".tr,
                              style: CustomTextStyles.bodyMediumff6c6b6b,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(left: 39.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcons8Undo321,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 1.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "msg_turn_left_onto_4th".tr,
                              style: CustomTextStyles
                                  .bodyLargeHindSiliguriPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 66.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_12".tr,
                              style: CustomTextStyles.bodyMediumff6c6b6b,
                            ),
                            TextSpan(
                              text: "lbl_miles".tr,
                              style: CustomTextStyles.bodyMediumff6c6b6b,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.only(left: 39.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcons8TurnRight2420x20,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(top: 4.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "msg_turn_right_at_105th".tr,
                              style: CustomTextStyles
                                  .bodyLargeHindSiliguriPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 66.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_40".tr,
                              style: CustomTextStyles.bodyMediumff6c6b6b,
                            ),
                            TextSpan(
                              text: "lbl_miles".tr,
                              style: CustomTextStyles.bodyMediumff6c6b6b,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 39.h,
                          right: 14.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgIcons8TurnRight2420x20,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(
                                top: 2.v,
                                bottom: 3.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "msg_turn_right_at_1052".tr,
                                style: CustomTextStyles
                                    .bodyLargeHindSiliguriAmber500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 66.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_250".tr,
                              style: CustomTextStyles.bodyMediumfff0c414,
                            ),
                            TextSpan(
                              text: "lbl_miles".tr,
                              style: CustomTextStyles.bodyMediumfff0c414,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 39.h,
                          right: 6.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIcons8UpArrow50,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(
                                top: 1.v,
                                bottom: 3.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_continue".tr,
                                      style: CustomTextStyles
                                          .bodyLargeHindSiliguriff000000,
                                    ),
                                    TextSpan(
                                      text: "msg_straight_to_stay".tr,
                                      style: CustomTextStyles
                                          .bodyLargeHindSiliguriff000000,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 66.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_24".tr,
                              style: CustomTextStyles.bodyMediumff6c6b6b,
                            ),
                            TextSpan(
                              text: "lbl_miles".tr,
                              style: CustomTextStyles.bodyMediumff6c6b6b,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(left: 39.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIcons8Undo321,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(
                                top: 5.v,
                                bottom: 1.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "msg_keep_left_follow".tr,
                                style: CustomTextStyles
                                    .bodyLargeHindSiliguriPrimaryContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 85.v),
                    Padding(
                      padding: EdgeInsets.only(left: 66.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_12".tr,
                              style: CustomTextStyles.bodyMediumff6c6b6b,
                            ),
                            TextSpan(
                              text: "lbl_miles".tr,
                              style: CustomTextStyles.bodyMediumff6c6b6b,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 96.v),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: appTheme.gray200,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 277.v),
                child: SizedBox(
                  width: 252.h,
                  child: Divider(
                    color: appTheme.gray200,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 251.h,
                child: Divider(
                  color: appTheme.gray200,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 280.v),
                child: SizedBox(
                  width: 248.h,
                  child: Divider(
                    color: appTheme.gray200,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 228.v),
                child: SizedBox(
                  width: 240.h,
                  child: Divider(
                    color: appTheme.gray200,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 176.v),
                child: SizedBox(
                  width: 249.h,
                  child: Divider(
                    color: appTheme.gray200,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 123.v),
                child: SizedBox(
                  width: 251.h,
                  child: Divider(
                    color: appTheme.gray200,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
