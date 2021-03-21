import 'package:flutter/material.dart';

extension ContextExtentions on BuildContext {
  /// When you are in sliver appAppar you may want to get current percent
  /// 0.0 -> Expanded
  /// 1.0 -> Collapsed to toolbar
  double getFlexibleSpaceBarSettingsPercent() {
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
}
