import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/device_scanning_controller.dart';

class DeviceScanning extends GetView<DeviceScanningController>{
  @override
  final controller = Get.put(DeviceScanningController());
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.discoveredDevices.isNotEmpty) {
          return ListView(
            children: controller.discoveredDevices.map((device) => Text(device.name ?? 'Unknown Device')).toList(),
          );
        } else {
          return Text("No devices found");
        }
      }),
      floatingActionButton:FloatingActionButton (
        onPressed: () {
          controller.scanningDevices();

        },) ,
    );
  }

}