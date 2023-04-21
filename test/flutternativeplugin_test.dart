import 'package:flutter_test/flutter_test.dart';
import 'package:flutternativeplugin/flutternativeplugin.dart';
import 'package:flutternativeplugin/flutternativeplugin_platform_interface.dart';
import 'package:flutternativeplugin/flutternativeplugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutternativepluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutternativepluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutternativepluginPlatform initialPlatform = FlutternativepluginPlatform.instance;

  test('$MethodChannelFlutternativeplugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutternativeplugin>());
  });

  test('getPlatformVersion', () async {
    Flutternativeplugin flutternativepluginPlugin = Flutternativeplugin();
    MockFlutternativepluginPlatform fakePlatform = MockFlutternativepluginPlatform();
    FlutternativepluginPlatform.instance = fakePlatform;

    expect(await flutternativepluginPlugin.getPlatformVersion(), '42');
  });
}
