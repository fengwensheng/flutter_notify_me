import 'dart:async';

import 'package:flutter/services.dart';

class FlutterNotifyMe {
  static const name = 'flutter_notify_me';
  static const MethodChannel _channel = const MethodChannel(name);

  static Future<void> open() async => await _channel.invokeMethod('open');
}
