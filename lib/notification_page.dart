import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'models/main_page_list.dart';

import 'services/api_mangement.dart';

class MyNotification extends StatefulWidget {
  const MyNotification({super.key});

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
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
        body: SafeArea(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
        ));
  }
}
