// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// DO NOT REMOVE OR MODIFY THE CODE ABOVE!\

import 'package:device_info_plus/device_info_plus.dart';

Future<String?> deviceInfoAndroid() async {
  // Add your function code here!
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
  return androidDeviceInfo.serialNumber;
}
