import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitleOne extends StatelessWidget {
  AppbarSubtitleOne({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.bodyLargeWhiteA70019.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
      ),
    );
  }
}
