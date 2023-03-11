// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:medicine/services/api_mangement.dart';
// import 'AppColor.dart';
// import 'models/main_page_list.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<MainPageList> listOfData = [];
//   ApiMange _apiMange = ApiMange();
//   Future getData() async {
//     listOfData = await _apiMange.getMainList();
//   }

//   late List mySlidesImages;
//   ReadData() async {
//     await DefaultAssetBundle.of(context)
//         .loadString("json/slides_imagesjson.json")
//         .then((value) {
//       setState(() {
//         mySlidesImages = json.decode(value);
//       });
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     ReadData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: SafeArea(
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('Medicine'),
//             backgroundColor: CPrimaryColor,
//             elevation: 0,
//           ),
//           body: Column(
//             children: [
//               Container(
//                   height: 180,
//                   child: PageView.builder(
//                     controller: PageController(viewportFraction: 1),
//                     itemCount:
//                         mySlidesImages == null ? 0 : mySlidesImages.length,
//                     itemBuilder: (context, index) {
//                       return
//                           // Container(
//                           //   height: 180,
//                           //   margin: EdgeInsets.only(
//                           //     top: 10,
//                           //     right: 10,
//                           //     left: 10,
//                           //   ),
//                           //   decoration: BoxDecoration(
//                           //     borderRadius: BorderRadius.circular(15),
//                           //     image: DecorationImage(
//                           //       fit: BoxFit.fill,
//                           //       image: AssetImage(mySlidesImages[index]["image"]),
//                           //     ),
//                           //   ),
//                           // )
//                           Container(
//                         height: 100,
//                         width: 150,
//                         child: ListView.builder(
//                             itemCount: listOfData.length,
//                             itemBuilder: (context, index) {
//                               return Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     vertical: 1.0, horizontal: 4.0),
//                                 child: Card(
//                                   child: ListTile(
//                                     title: Text(listOfData[index]
//                                         .typeVehicle
//                                         .toString()),
//                                     trailing:
//                                         const Icon(Icons.keyboard_arrow_left),
//                                     leading: const Icon(
//                                       Icons.info,
//                                       color: Color(0xff1E319D),
//                                       size: 30,
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             }),
//                       );
//                     },
//                   )),
//             //  SizedBox(height: 20),
//               // SingleChildScrollView(
//               //   scrollDirection: Axis.horizontal,
//               //   child: Row(
//               //     children:
//               //     List.generate(, (index) {return Container();},)

//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
