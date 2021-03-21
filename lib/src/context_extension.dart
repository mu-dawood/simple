import 'package:flutter/material.dart';

extension ContextExtentions on BuildContext {
  /// When you are in sliver appAppar you may want to get current percent
  /// 0.0 -> Expanded
  /// 1.0 -> Collapsed to toolbar
  double getFlexibleSpaceBarPercent() {
    final FlexibleSpaceBarSettings? settings =
        this.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
    assert(settings != null);
    if (settings != null) {
      final double deltaExtent = settings.maxExtent - settings.minExtent;

      return (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
          .clamp(0.0, 1.0);
    }
    return 0;
  }

  /// get bodyText1 property from text theme
  TextStyle? get bodyText1 => Theme.of(this).textTheme.bodyText1;

  /// get bodyText2 property from text theme

  TextStyle? get bodyText2 => Theme.of(this).textTheme.bodyText2;

  /// get button property from text theme

  TextStyle? get button => Theme.of(this).textTheme.button;

  /// get caption property from text theme

  TextStyle? get caption => Theme.of(this).textTheme.caption;

  /// get headline1 property from text theme

  TextStyle? get headline1 => Theme.of(this).textTheme.headline1;

  /// get headline2 property from text theme

  TextStyle? get headline2 => Theme.of(this).textTheme.headline2;

  /// get headline3 property from text theme

  TextStyle? get headline3 => Theme.of(this).textTheme.headline3;

  /// get headline4 property from text theme

  TextStyle? get headline4 => Theme.of(this).textTheme.headline4;

  /// get headline5 property from text theme

  TextStyle? get headline5 => Theme.of(this).textTheme.headline5;

  /// get headline6 property from text theme

  TextStyle? get headline6 => Theme.of(this).textTheme.headline6;

  /// get overline property from text theme

  TextStyle? get overline => Theme.of(this).textTheme.overline;

  /// get subtitle1 property from text theme

  TextStyle? get subtitle1 => Theme.of(this).textTheme.subtitle1;

  /// get subtitle2 property from text theme

  TextStyle? get subtitle2 => Theme.of(this).textTheme.subtitle2;
}
