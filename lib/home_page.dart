import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'AppColor.dart';
import 'bottom_bar.dart';
import 'incapsed_widgets/my_card.dart';
import 'incapsed_widgets/my_policy_buttons.dart';
import 'models/all_policies_model.dart';
import 'my_list_tile.dart';
import 'my_side_menu.dart';
import 'incapsed_widgets/my_three_policy_buttons.dart';
import 'priced_policy.dart';
import 'rejected_policy.dart';
import 'three_policy_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pagecontroller
  final _controller = PageController();
// list generater for data pages
  static List<String> buttonNames = ['تم تسعيرها', 'تم رفضها', 'قيد الاجراء'];
  static List<String> buttonListTileTry = [
    'فاتورة1',
    'فاتورة2',
    'فاتورة3',
    'فاتورة4',
    'فاتورة5',
    'فاتورة6'
  ];
  static List path = [
    'assets/icons/insurance-policy.png',
    'assets/icons/reject.png',
    'assets/icons/deployment2.png',
  ];
  final List<AllPoliciesModel> policiesData = List.generate(
      buttonNames.length,
      (index) => AllPoliciesModel('${buttonNames[index]}', '${path[index]}',
          '${buttonListTileTry[index]}'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomBar(),
      //bottom app bar
      appBar: AppBar(backgroundColor: CPrimaryColor, actions: [
        SizedBox(
          width: Get.width - 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Medicine',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              //plus Icon button
              Icon(Icons.notifications)
            ],
          ),
        ),
      ]),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                //appbar

                SizedBox(
                  height: 25,
                ),
                //cards
                Container(
                  height: 200,
                  child: PageView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      MyCard(),
                      MyCard(),
                      MyCard(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect:
                      ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
                ),
                SizedBox(
                  height: 20,
                ),
                //3 buttons ->uploaded policy + priced_policy + rejected policy +
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: SizedBox(
                      height: 125,
                      child: MyThreePolicyButtons(policiesData: policiesData),
                    )),
                SizedBox(
                  height: 25,
                ),

                //column -> فواتير

                Column(
                  children: [
                    MyListTile(
                        iconImagePath: 'assets/icons/file.png',
                        tileName: 'قائمة بالفواتير'),
                    MyListTile(
                        iconImagePath: 'assets/icons/file.png',
                        tileName: 'قائمة بالفواتير'),
                    MyListTile(
                        iconImagePath: 'assets/icons/file.png',
                        tileName: 'قائمة بالفواتير'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
