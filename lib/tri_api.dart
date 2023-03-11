import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AppColor.dart';
import 'notification_page.dart';

import 'models/main_page_list.dart';
import 'services/api_mangement.dart';

class tryApi extends StatefulWidget {
  const tryApi({super.key});

  @override
  State<tryApi> createState() => _tryApiState();
}

class _tryApiState extends State<tryApi> {
  final List<Map<String, Object>> scrollCards = [
    {
      'title': 'ملفات تم تحميلها',
      'image': 'assets/images/14 February close.png'
    },
    {'title': 'فواتير تم قبولها', 'image': 'assets/images/download nasa.png'},
    {
      'title': 'فواتير تم رفضها',
      'image': 'assets/images/14 February close.png'
    },
    {'title': 'فواتير قيد الاجراء', 'image': 'assets/images/download nasa.png'}
  ];
  List<MainPageList> listOfData = [];
  ApiMange _apiMange = ApiMange();
  Future getData() async {
    setState(() async {
      listOfData = await _apiMange.getMainList();
      print(listOfData.length);
    });
  }

  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Medicine'),
        backgroundColor: CPrimaryColor,
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              // Get.to(
              //   const MyNotification(),
              // );
            },
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: scrollCards.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Container(
                              width: Get.width * 0.45,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Opacity(
                                  opacity: 0.9,
                                  child: Image.asset(
                                    "${scrollCards.elementAt(index)['image']}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(scrollCards[index].toString())
                        ],
                      );
                    },
                  ),
                ),

                //============
                Expanded(
                  child: ListView.builder(
                      itemCount: listOfData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 1.0, horizontal: 4.0),
                          child: Card(
                            child: ListTile(
                              title: Text(
                                  listOfData[index].typeVehicle.toString()),
                              trailing: const Icon(Icons.keyboard_arrow_left),
                              leading: const Icon(
                                Icons.info,
                                color: Color(0xff1E319D),
                                size: 30,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
