import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class DeviceHelper {
  static final shared = DeviceHelper._internal();

  DeviceHelper._internal();

  final double devicePixelRatio = ui.window.devicePixelRatio;
  final ui.Size size = ui.window.physicalSize;
  final locale = ui.window.locale;

  double get width => size.width;

  double get height => size.height;

  bool get isTablet {
    if (Platform.isAndroid) {
      if (devicePixelRatio < 2 && (width >= 800 && height >= 1000)) {
        return true;
      }
      if (devicePixelRatio < 2 && (width >= 1000 && height >= 1000)) {
        return true;
      }
      if (devicePixelRatio == 2 && (width >= 1920 || height >= 1920)) {
        return true;
      }
    } else {
      if (devicePixelRatio < 2 && (width >= 1000 || height >= 1000)) {
        return true;
      }
      if (devicePixelRatio == 2 && (width >= 1920 || height >= 1920)) {
        return true;
      }
    }
    return false;
  }

  double heightScreen(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double widthScreen(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
