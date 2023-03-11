import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/incapsed_widgets/my_policy_buttons.dart';
import 'package:medicine/tri_api.dart';

import 'home.dart';
import 'home_page.dart';
import 'home_page2.dart';
import 'incapsed_widgets/my_three_policy_buttons.dart';
import 'log_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/MyThreePolicyButtons',
          page: () => MyThreePolicyButtons(policiesData: []),
        )
      ],
    );
  }
}
