import 'dart:async';

extension TimerExtensions on Timer {
  T? onActive<T>(T callback) {
    if (this.isActive)
      return callback;
    else
      return null;
  }

  T? onActiveOrNull<T>(T callback) {
    if (this.isActive)
      return callback;
    else
      return null;
  }

  T? onNotActiveOrNull<T>(T callback) {
    if (!this.isActive)
      return callback;
    else
      return null;
  }

  T? onNotActive<T>(T callback) {
    if (!this.isActive)
      return callback;
    else
      return null;
  }
}
