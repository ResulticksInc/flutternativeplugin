import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutternativeplugin_platform_interface.dart';

/// An implementation of [FlutternativepluginPlatform] that uses method channels.
class MethodChannelFlutternativeplugin extends FlutternativepluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutternativeplugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
