import 'bloc/message_bloc.dart';
import 'models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_text_form_field.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MessageBloc>(
      create: (context) => MessageBloc(MessageState(
        messageModelObj: MessageModel(),
      ))
        ..add(MessageInitialEvent()),
      child: MessageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildEightColumn(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 34.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "msg_today_at_5_03_pm".tr,
                        style: CustomTextStyles.bodyMediumRobotoOnPrimary,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 207.h,
                        margin: EdgeInsets.only(left: 136.h),
                        padding: EdgeInsets.all(15.h),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 10.v),
                            Text(
                              "msg_hello_are_you_nearby".tr,
                              style: CustomTextStyles.bodyLargeWhiteA700_2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: 218.h,
                      margin: EdgeInsets.only(right: 125.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.h,
                        vertical: 12.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgMess1,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16.v),
                          Text(
                            "msg_i_ll_be_there_in".tr,
                            style: CustomTextStyles.bodyLargeGray900,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 185.h,
                        margin: EdgeInsets.only(left: 158.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.h,
                          vertical: 13.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgMess4,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 9.v),
                            Container(
                              width: 133.h,
                              margin: EdgeInsets.only(left: 21.h),
                              child: Text(
                                "msg_ok_i_am_waiting".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                                style: CustomTextStyles.bodyLargeWhiteA700_2
                                    .copyWith(
                                  height: 1.29,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_5_33_pm".tr,
                        style: CustomTextStyles.bodyMediumRobotoOnPrimary,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Container(
                      width: 250.h,
                      margin: EdgeInsets.only(right: 93.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.h,
                        vertical: 10.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgMess1,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.v),
                          Container(
                            width: 190.h,
                            margin: EdgeInsets.only(right: 23.h),
                            child: Text(
                              "msg_sorry_i_m_stuck".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeGray900.copyWith(
                                height: 1.29,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildSevenColumn(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.fillAmber,
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: double.maxFinite,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgChevron,
              margin: EdgeInsets.only(
                left: 16.h,
                right: 347.h,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_earl_berry".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgAvatar50x50,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSevenColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 36.v),
      decoration: AppDecoration.fillBlueGray,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: appTheme.blueGray50,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 8.v,
              right: 10.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: BlocSelector<MessageBloc, MessageState,
                      TextEditingController?>(
                    selector: (state) => state.messageController,
                    builder: (context, messageController) {
                      return CustomTextFormField(
                        controller: messageController,
                        hintText: "msg_type_a_message".tr,
                        hintStyle: CustomTextStyles.bodyMediumRobotoGray400,
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 9.v,
                        ),
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineBlueGrayTL8,
                        filled: true,
                        fillColor: appTheme.whiteA700.withOpacity(0.8),
                      );
                    },
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSave,
                  height: 27.v,
                  width: 30.h,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    top: 4.v,
                    bottom: 4.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
