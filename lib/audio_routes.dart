
import 'dart:async';

import 'package:flutter/services.dart';

class AudioRoutes {
  static const MethodChannel _channel =
      const MethodChannel('audio_routes');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
