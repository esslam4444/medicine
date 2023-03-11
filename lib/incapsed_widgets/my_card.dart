import 'package:flutter/material.dart';

import '../AppColor.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        height: 150,
        decoration: BoxDecoration(
            color: Color.fromRGBO(208, 164, 104, 1),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            'ADDS SOON',
            style: TextStyle(fontSize: 26),
          ),
        ),
      ),
    );
  }
}
