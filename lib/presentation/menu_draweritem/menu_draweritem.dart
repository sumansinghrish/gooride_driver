import 'bloc/menu_bloc.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MenuDraweritem extends StatelessWidget {
  const MenuDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            left: 20.h,
            right: 96.h,
            bottom: 25.v,
          ),
          decoration: AppDecoration.outlinePrimaryContainer7,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 275.v,
                width: 328.h,
                decoration: AppDecoration.fillAmber,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(right: 118.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 16.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup56,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 165.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 33.h,
                                right: 15.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5.v),
                                    child: CustomIconButton(
                                      height: 25.adaptSize,
                                      width: 25.adaptSize,
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIcons8Clock50,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIcons8Speed50,
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 1.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 29.h,
                                right: 4.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      "lbl_10_2".tr,
                                      style: CustomTextStyles
                                          .bodyLargePrimaryContainer,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2.v),
                                    child: Text(
                                      "lbl_30_km".tr,
                                      style: CustomTextStyles
                                          .bodyLargePrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 2.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_hours_online".tr,
                                style: CustomTextStyles.bodyLargeGray700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.04591259,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup56,
                        height: 118.v,
                        width: 320.h,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 240.h,
                          right: 8.h,
                          bottom: 18.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIcons8Page242,
                              height: 29.adaptSize,
                              width: 29.adaptSize,
                              margin: EdgeInsets.only(left: 23.h),
                            ),
                            SizedBox(height: 5.v),
                            Padding(
                              padding: EdgeInsets.only(left: 27.h),
                              child: Text(
                                "lbl_20".tr,
                                style:
                                    CustomTextStyles.bodyLargePrimaryContainer,
                              ),
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "lbl_total_jobs".tr,
                              style: CustomTextStyles.bodyLargeGray700,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 100.h,
                          bottom: 18.v,
                        ),
                        child: Text(
                          "lbl_total_distance".tr,
                          style: CustomTextStyles.bodyLargeGray700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 74.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgAvatar88x96,
                              height: 88.v,
                              width: 96.h,
                              radius: BorderRadius.circular(
                                44.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 19.h,
                                top: 4.v,
                                bottom: 31.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_martha_banks".tr,
                                    style: CustomTextStyles
                                        .titleLargeRobotoRegular,
                                  ),
                                  SizedBox(height: 4.v),
                                  Container(
                                    width: 140.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 18.h,
                                      vertical: 1.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder12,
                                    ),
                                    child: Text(
                                      "lbl_gold_member".tr,
                                      style: CustomTextStyles.bodyLargeAmber500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.v),
              Padding(
                padding: EdgeInsets.only(left: 32.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIcons,
                      height: 390.v,
                      width: 32.h,
                    ),
                    Container(
                      width: 101.h,
                      margin: EdgeInsets.only(
                        left: 13.h,
                        top: 5.v,
                      ),
                      child: Text(
                        "msg_home_my_wallet".tr,
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLarge_1.copyWith(
                          height: 3.53,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.v),
            ],
          ),
        ),
      ),
    );
  }
}
