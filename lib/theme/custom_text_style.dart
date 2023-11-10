import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimaryMedium => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeUbuntuMonoGray100 =>
      theme.textTheme.titleLarge!.ubuntuMono.copyWith(
        color: appTheme.gray100.withOpacity(0.53),
        fontWeight: FontWeight.w400,
      );
}

extension on TextStyle {
  TextStyle get ubuntuMono {
    return copyWith(
      fontFamily: 'Ubuntu Mono',
    );
  }

  TextStyle get jost {
    return copyWith(
      fontFamily: 'Jost',
    );
  }

  TextStyle get belanosima {
    return copyWith(
      fontFamily: 'Belanosima',
    );
  }
}
