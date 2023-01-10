import 'package:flutter/services.dart';

class CallNativeFlutter {
  static const MethodChannel _channel = MethodChannel('base_image');

  static Future<String?> getBattery() async {
    final String? version = await _channel.invokeMethod('getBattery');
    return version;
  }

}
