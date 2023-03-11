import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../priced_policy.dart';
import '../rejected_policy.dart';

class MyPolicyButtons extends StatefulWidget {
  final String imagePath;
  final String textButton;

  MyPolicyButtons(
      {super.key, required this.imagePath, required this.textButton});

  @override
  State<MyPolicyButtons> createState() => _MyPolicyButtonsState();
}

class _MyPolicyButtonsState extends State<MyPolicyButtons> {
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
            child: Center(child: Image.asset(widget.imagePath)),
          ),
          Text(
            widget.textButton,
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
