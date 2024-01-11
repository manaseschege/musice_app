

import 'package:bluetooth_classic/bluetooth_classic.dart';
import 'package:bluetooth_classic/models/device.dart';
import 'package:get/get.dart';

class DeviceScanningController {
  final _bluetoothClassicPlugin = BluetoothClassic();
  bool scanning = false;
  RxList<Device> discoveredDevices = <Device>[].obs;

  Future<void> scanningDevices() async {
    if (!scanning) {
      scanning = true;
      _bluetoothClassicPlugin.startScan();
      _bluetoothClassicPlugin.onDeviceDiscovered().listen((event) {
        print(event.name);
        discoveredDevices.add(event);
      });
    }
  }
}