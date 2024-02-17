import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber500,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue700,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray50.withOpacity(0.4),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillGray30001 => BoxDecoration(
        color: appTheme.gray30001,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange700,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.82),
      );

  // Gradient decorations
  static BoxDecoration get gradientPrimaryToOnPrimaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineAmber => BoxDecoration(
        border: Border.all(
          color: appTheme.amber500,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineAmber500 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.amber500,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineAmber5001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.amber500,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineAmberA => BoxDecoration(
        border: Border.all(
          color: appTheme.amberA400,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.amberA400,
        border: Border.all(
          color: appTheme.gray40001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer1 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer2 => BoxDecoration(
        color: appTheme.whiteA700,
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
      );
  static BoxDecoration get outlinePrimaryContainer3 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer4 => BoxDecoration(
        color: appTheme.whiteA700,
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
      );
  static BoxDecoration get outlinePrimaryContainer5 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.82),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer6 => BoxDecoration(
        color: appTheme.whiteA700,
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
      );
  static BoxDecoration get outlinePrimaryContainer7 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer.withOpacity(0.3),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer8 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder44 => BorderRadius.circular(
        44.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL11 => BorderRadius.vertical(
        top: Radius.circular(11.h),
      );
  static BorderRadius get customBorderTL16 => BorderRadius.vertical(
        top: Radius.circular(16.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
