import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AppColor.dart';

class PricedPolicy extends StatelessWidget {
  const PricedPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CPrimaryColor,
        title: Center(child: const Text('فواتير تم تسعيرها')),
      ),
    );
  }
}
