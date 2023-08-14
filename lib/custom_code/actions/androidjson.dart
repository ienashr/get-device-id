// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:device_info_plus/device_info_plus.dart';

Future<dynamic> androidjson() async {
  // get android device info and return it as json
// Create an instance of DeviceInfoPlugin
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  // Get Android device info
  AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

  // Create a map to store device info
  Map<String, dynamic> deviceData = {
    'brand': androidInfo.brand,
    'model': androidInfo.model,
    'board': androidInfo.board,
    'bootloader': androidInfo.bootloader,
    'device': androidInfo.device,
    'display': androidInfo.display,
    'fingerprint': androidInfo.fingerprint,
    'hardware': androidInfo.hardware,
    'host': androidInfo.host,
    'id': androidInfo.id,
    'manufacturer': androidInfo.manufacturer,
    'product': androidInfo.product,
    'tags': androidInfo.tags,
    'type': androidInfo.type
  };

  // Convert the map to JSON and return it
  return deviceData;
}
