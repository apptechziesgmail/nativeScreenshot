import 'dart:async';

import 'package:flutter/services.dart';

/// Class to capture screenshots with native code working on background
class NativeScreenshot {
  /// Comunication property to talk to the native background code.
  static const MethodChannel _channel =
      const MethodChannel('native_screenshot');

  /// Captures everything as is shown in user's device.
  ///
  /// Returns [null] if an error ocurrs.
  /// Returns a [String] with the path of the screenshot.
  static Future<String> takeScreenshot(String pathName) async {
    final String path = await _channel.invokeMethod('takeScreenshot', {'pathName': pathName});

    return path;
  } // takeScreenshot()
  static Future<String> takeScreenshotold(String pathName) async {
    final String path = await _channel.invokeMethod('takeScreenshotOld', {'pathName': pathName});

    return path;
  } // takeScreenshotold()
} // NativeScreenshot
