import 'seon_plugin_platform_interface.dart';

class SeonPlugin {
  Future<String?> getPlatformVersion() {
    return SeonPluginPlatform.instance.getPlatformVersion();
  }

  Future<String?> getFingerPrintBase64(
          String? sessionId, bool isLoggingEnabled) =>
      SeonPluginPlatform.instance
          .getFingerPrintBase64(sessionId, isLoggingEnabled);
}
