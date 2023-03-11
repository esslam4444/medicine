import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileName;

  const MyListTile({
    super.key,
    required this.iconImagePath,
    required this.tileName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20)),
            child: Image.asset(iconImagePath),
          ),
          Text(
            tileName,
            style: TextStyle(fontSize: 20),
          ),
          Icon(
            Icons.arrow_forward_ios,
          )
        ],
      ),
    );
  }
}
