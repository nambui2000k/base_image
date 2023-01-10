import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'base_image_method_channel.dart';

abstract class BaseImagePlatform extends PlatformInterface {
  /// Constructs a BaseImagePlatform.
  BaseImagePlatform() : super(token: _token);

  static final Object _token = Object();

  static BaseImagePlatform _instance = MethodChannelBaseImage();

  /// The default instance of [BaseImagePlatform] to use.
  ///
  /// Defaults to [MethodChannelBaseImage].
  static BaseImagePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BaseImagePlatform] when
  /// they register themselves.
  static set instance(BaseImagePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
