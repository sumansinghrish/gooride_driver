import '../models/jobsummary_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';

// ignore: must_be_immutable
class JobsummaryItemWidget extends StatelessWidget {
  JobsummaryItemWidget(
    this.jobsummaryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JobsummaryItemModel jobsummaryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155.h,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.outlinePrimaryContainer8.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: jobsummaryItemModelObj?.jobImage,
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.only(
                  top: 13.v,
                  bottom: 12.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobsummaryItemModelObj.jobTitle!,
                      style: theme.textTheme.titleLarge,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        jobsummaryItemModelObj.jobCount!,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
