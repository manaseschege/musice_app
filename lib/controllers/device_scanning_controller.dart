import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart';

class DeviceScanningController{
  //Bluetooth Instance
  BluetoothManager bluetoothManager = BluetoothManager.instance;

  //scanning for devices
  Stream<List> scanForDevices(){
    bluetoothManager.startScan()
        .then((value) => null);
    final result = bluetoothManager.scanResults;
    return result;
  }

}