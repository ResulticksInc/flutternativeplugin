import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutternativeplugin_method_channel.dart';

abstract class FlutternativepluginPlatform extends PlatformInterface {
  /// Constructs a FlutternativepluginPlatform.
  FlutternativepluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutternativepluginPlatform _instance = MethodChannelFlutternativeplugin();

  /// The default instance of [FlutternativepluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutternativeplugin].
  static FlutternativepluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutternativepluginPlatform] when
  /// they register themselves.
  static set instance(FlutternativepluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
