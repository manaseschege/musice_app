import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/device_scanning_controller.dart';

class DeviceScanning extends GetView<DeviceScanningController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: controller.scanForDevices(),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: snapshot.data!.map((e) => Text(e.name.toString())).toList(),
          );
        },

      ),
    );
  }

}