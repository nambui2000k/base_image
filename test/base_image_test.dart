import 'package:flutter_test/flutter_test.dart';
import 'package:base_image/base_image.dart';
import 'package:base_image/base_image_platform_interface.dart';
import 'package:base_image/base_image_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBaseImagePlatform
    with MockPlatformInterfaceMixin
    implements BaseImagePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BaseImagePlatform initialPlatform = BaseImagePlatform.instance;

  test('$MethodChannelBaseImage is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBaseImage>());
  });

  test('getPlatformVersion', () async {
    BaseImage baseImagePlugin = BaseImage();
    MockBaseImagePlatform fakePlatform = MockBaseImagePlatform();
    BaseImagePlatform.instance = fakePlatform;

    expect(await baseImagePlugin.getPlatformVersion(), '42');
  });
}
