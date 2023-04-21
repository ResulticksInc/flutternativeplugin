import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutternativeplugin/flutternativeplugin_method_channel.dart';

void main() {
  MethodChannelFlutternativeplugin platform = MethodChannelFlutternativeplugin();
  const MethodChannel channel = MethodChannel('flutternativeplugin');

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
