
import 'flutternativeplugin_platform_interface.dart';

class Flutternativeplugin {
  Future<String?> getPlatformVersion() {
    return FlutternativepluginPlatform.instance.getPlatformVersion();
  }
}
