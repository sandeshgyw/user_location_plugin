import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:user_location/user_location.dart';

void main() {
  const MethodChannel channel = MethodChannel('user_location');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // See https://github.com/igaurab/user_location_plugin/issues/42
  // test('getPlatformVersion', () async {
  //   expect(await UserLocation.platformVersion, '42');
  // });
}
