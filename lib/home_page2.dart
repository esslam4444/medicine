// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:get/get.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'AppColor.dart';
// import 'bottom_bar.dart';
// import 'incapsed_widgets/my_card.dart';
// import 'incapsed_widgets/my_policy_buttons.dart';
// import 'incapsed_widgets/my_policy_buttons2.dart';
// import 'models/all_policies_model.dart';
// import 'my_list_tile.dart';
// import 'my_side_menu.dart';
// import 'three_policy_pages.dart';
// import 'priced_policy.dart';
// import 'rejected_policy.dart';

// class HomePage2 extends StatefulWidget {
//   const HomePage2({super.key});

//   @override
//   State<HomePage2> createState() => _HomePageState2();
// }

// class _HomePageState2 extends State<HomePage2> {
//   //pagecontroller
//   final _controller = PageController();
//   //----------
//   static List<String> buttonNames = ['تم تسعيرها', 'تم رفضها', 'قيد الاجراء'];
//   static List path = [
//     'assets/icons/insurance-policy.png',
//     'assets/icons/reject.png',
//     'assets/icons/deployment2.png',
//   ];
//   final List<AllPoliciesModel> policiesData = List.generate(buttonNames.length,
//       (index) => AllPoliciesModel('${buttonNames[index]}', '${path[index]}'));
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: SideMenu(),
//         backgroundColor: Colors.grey[300],
//         bottomNavigationBar: BottomBar(),
//         //bottom app bar
//         appBar: AppBar(backgroundColor: CPrimaryColor, actions: [
//           SizedBox(
//             width: Get.width - 100,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Text(
//                   'Medicine',
//                   style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
//                 ),
//                 //plus Icon button
//                 Icon(Icons.notifications)
//               ],
//             ),
//           ),
//         ]),
//         body: ListView.builder(
//           itemCount: policiesData.length,
//           itemBuilder: (context, index) {
//             return InkWell(
//               onTap: () {
//                 Get.to(
//                   ThreePolicyPages(
//                     allPoliciesModel: policiesData[index],
//                   ),
//                 );
//               },
//               child: ListTile(
//                 title: Text(
//                   policiesData[index].name,
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.grey[700],
//                   ),
//                 ),
//                 leading: SizedBox(
//                   width: 50,
//                   height: 50,
//                   child: Image.asset(policiesData[index].image),
//                 ),
//               ),
//             );
//           },
//         ));
//   }
// }
