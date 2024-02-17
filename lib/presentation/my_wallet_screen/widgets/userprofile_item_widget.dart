import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 225.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.95,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 210.v,
                  width: 279.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700.withOpacity(0.69),
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
                          -5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.95,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 193.v,
                  width: 311.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700.withOpacity(0.69),
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
                          -5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 21.v),
                decoration: AppDecoration.outlinePrimaryContainer2.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        right: 59.h,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillAmber,
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgIconsMoney1Primarycontainer,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 17.h,
                              bottom: 2.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_cash".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "msg_default_payment".tr,
                                  style: CustomTextStyles.bodyLargeGray400_1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Divider(
                      endIndent: 1.h,
                    ),
                    SizedBox(height: 25.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 29.h,
                        right: 54.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_balance".tr.toUpperCase(),
                                style:
                                    CustomTextStyles.bodyMediumRobotoGray40013,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "lbl_25002".tr.toUpperCase(),
                                style: CustomTextStyles
                                    .headlineLargeRobotoPrimaryContainer,
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 4.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "lbl_expires".tr.toUpperCase(),
                                    style: CustomTextStyles
                                        .bodyMediumRobotoGray40013,
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Text(
                                  "lbl_09_21".tr.toUpperCase(),
                                  style: CustomTextStyles
                                      .titleLargeRobotoBluegray900,
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
            ),
          ],
        ),
      ),
    );
  }
}
