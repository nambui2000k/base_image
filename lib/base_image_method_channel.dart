import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'base_image_platform_interface.dart';

/// An implementation of [BaseImagePlatform] that uses method channels.
class MethodChannelBaseImage extends BaseImagePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('base_image');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
