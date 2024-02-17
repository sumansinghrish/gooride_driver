import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillAmber => ElevatedButton.styleFrom(
        backgroundColor: appTheme.amber500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );
  static ButtonStyle get fillPrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(0.05),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
      );
  static ButtonStyle get fillWhiteA1 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
