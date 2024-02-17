import 'bloc/setup_gps_locations_bloc.dart';
import 'models/setup_gps_locations_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';

class SetupGpsLocationsScreen extends StatelessWidget {
  const SetupGpsLocationsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SetupGpsLocationsBloc>(
      create: (context) => SetupGpsLocationsBloc(SetupGpsLocationsState(
        setupGpsLocationsModelObj: SetupGpsLocationsModel(),
      ))
        ..add(SetupGpsLocationsInitialEvent()),
      child: SetupGpsLocationsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetupGpsLocationsBloc, SetupGpsLocationsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 31.h,
                vertical: 38.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 92.v),
                  CustomImageView(
                    imagePath: ImageConstant.img86111743929712,
                    height: 259.v,
                    width: 296.h,
                  ),
                  SizedBox(height: 55.v),
                  Text(
                    "msg_enable_your_location".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 43.v),
                  SizedBox(
                    width: 310.h,
                    child: Text(
                      "msg_choose_your_location".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeInterPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 54.v),
                  CustomElevatedButton(
                    width: 190.h,
                    text: "lbl_use_my_location".tr.toUpperCase(),
                    buttonTextStyle: CustomTextStyles.titleMediumInterWhiteA700,
                  ),
                  SizedBox(height: 42.v),
                  Text(
                    "lbl_skip_for_now".tr.toUpperCase(),
                    style: CustomTextStyles.labelLargeInterGray40002,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
