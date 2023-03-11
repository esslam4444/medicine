import 'package:flutter/material.dart';

import 'AppColor.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_outlined,
                size: 32,
                color: CPrimaryColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark_add_outlined, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}
