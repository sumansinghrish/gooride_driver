import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAmber500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.amber500,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeGray400_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeGray900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeHindSiliguriAmber500 =>
      theme.textTheme.bodyLarge!.hindSiliguri.copyWith(
        color: appTheme.amber500,
      );
  static get bodyLargeHindSiliguriPrimaryContainer =>
      theme.textTheme.bodyLarge!.hindSiliguri.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodyLargeHindSiliguriff000000 =>
      theme.textTheme.bodyLarge!.hindSiliguri.copyWith(
        color: Color(0XFF000000),
      );
  static get bodyLargeHomenajePrimaryContainer =>
      theme.textTheme.bodyLarge!.homenaje.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodyLargeInterPrimaryContainer =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodyLargeSFUIDisplay => theme.textTheme.bodyLarge!.sFUIDisplay;
  static get bodyLargeSFUIDisplayWhiteA700 =>
      theme.textTheme.bodyLarge!.sFUIDisplay.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeWhiteA70019 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 19.fSize,
      );
  static get bodyLargeWhiteA700_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeWhiteA700_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumAmber500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.amber500,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumInterff000000 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF000000),
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoBluegray400 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray400,
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoGray400 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray400,
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoGray40013 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray400,
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoGray40015 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray400,
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoGray900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoGray90015 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoGreenA400 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.greenA400,
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoIndigoA400 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.indigoA400,
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoOnPrimary =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
      );
  static get bodyMediumSFUIDisplayGray400 =>
      theme.textTheme.bodyMedium!.sFUIDisplay.copyWith(
        color: appTheme.gray400,
        fontSize: 13.fSize,
      );
  static get bodyMediumSFUIDisplayGray800 =>
      theme.textTheme.bodyMedium!.sFUIDisplay.copyWith(
        color: appTheme.gray800,
        fontSize: 13.fSize,
      );
  static get bodyMediumSFUIDisplayff4a494a =>
      theme.textTheme.bodyMedium!.sFUIDisplay.copyWith(
        color: Color(0XFF4A494A),
        fontSize: 13.fSize,
      );
  static get bodyMediumff6c6b6b => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF6C6B6B),
      );
  static get bodyMediumfff0c414 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFF0C414),
      );
  // Display text style
  static get displaySmallSFProDisplay =>
      theme.textTheme.displaySmall!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get displaySmallSFUIDisplayBluegray900 =>
      theme.textTheme.displaySmall!.sFUIDisplay.copyWith(
        color: appTheme.blueGray900,
        fontSize: 36.fSize,
        fontWeight: FontWeight.w600,
      );
  // Headline text style
  static get headlineLargeJomhuriaWhiteA700 =>
      theme.textTheme.headlineLarge!.jomhuria.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeRobotoBluegray900 =>
      theme.textTheme.headlineLarge!.roboto.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeRobotoPrimaryContainer =>
      theme.textTheme.headlineLarge!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.9),
        fontWeight: FontWeight.w400,
      );
  // Jomhuria text style
  static get jomhuriaWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 120.fSize,
        fontWeight: FontWeight.w400,
      ).jomhuria;
  // Label text style
  static get labelLargeInterGray40002 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray40002,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterff000000 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: Color(0XFF000000),
      );
  static get labelLargeSFUIDisplayff4a494a =>
      theme.textTheme.labelLarge!.sFUIDisplay.copyWith(
        color: Color(0XFF4A494A),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff000000 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF000000),
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeHomenaje =>
      theme.textTheme.titleLarge!.homenaje.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRobotoBluegray900 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRobotoBluegray900Regular =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRobotoRegular =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRobotoRegular22 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumGray40003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray40003,
        fontSize: 18.fSize,
      );
  static get titleMediumGray40003_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray40003,
      );
  static get titleMediumInterWhiteA700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.33),
      );
  static get titleMediumPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRoboto => theme.textTheme.titleMedium!.roboto.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFUIDisplayGray400 =>
      theme.textTheme.titleMedium!.sFUIDisplay.copyWith(
        color: appTheme.gray400,
      );
  static get titleMediumSFUIDisplayWhiteA700 =>
      theme.textTheme.titleMedium!.sFUIDisplay.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get jomhuria {
    return copyWith(
      fontFamily: 'Jomhuria',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get homenaje {
    return copyWith(
      fontFamily: 'Homenaje',
    );
  }

  TextStyle get sFUIDisplay {
    return copyWith(
      fontFamily: 'SF UI Display',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get hindSiliguri {
    return copyWith(
      fontFamily: 'Hind Siliguri',
    );
  }
}
