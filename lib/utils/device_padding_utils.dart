import 'package:flutter/material.dart';

extension DevicePaddingExtensions on BuildContext {
  /// Returns bottoms padding from [MediaQuery], or [optionalPadding] if it's empty
  EdgeInsetsDirectional bottomPaddingOr({double optionalPadding = 16}) {
    final bottomPadding = MediaQuery.of(this).viewPadding.bottom;

    return EdgeInsetsDirectional.only(
        bottom:
            bottomPadding > optionalPadding ? bottomPadding : optionalPadding);
  }
}
