import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:base_image/base_image_method_channel.dart';

void main() {
  MethodChannelBaseImage platform = MethodChannelBaseImage();
  const MethodChannel channel = MethodChannel('base_image');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
