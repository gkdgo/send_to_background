import 'package:flutter/services.dart';

/// An implementation of [SendToBackgroundPlatform] that uses method channels.
class SendToBackground  {
  /// The method channel used to interact with the native platform.
  static const MethodChannel methodChannel = MethodChannel('send_to_background');

  // send app to background
  static Future<void> sendToBackground() async {
    await methodChannel.invokeMethod('sendToBackground');
  }
}
