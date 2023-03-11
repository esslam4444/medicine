import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../priced_policy.dart';
import '../rejected_policy.dart';

class MyPolicyButtons2 extends StatelessWidget {
  MyPolicyButtons2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: 90,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 40,
                    spreadRadius: 2),
              ],
            ),
            child: Center(child: Image.asset('assets/icons/policy.png')),
          ),
          Text(
            'تجربة',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
