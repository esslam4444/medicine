import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/all_policies_model.dart';
import '../three_policy_pages.dart';

class MyThreePolicyButtons extends StatelessWidget {
  const MyThreePolicyButtons({
    super.key,
    required this.policiesData,
  });

  final List<AllPoliciesModel> policiesData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: policiesData.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.toNamed(
              '/MyThreePolicyButtons',
              arguments: ThreePolicyPages(
                allPoliciesModel: policiesData[index],
                policiesData: [],
              ),
            );
          },
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
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
                      child: Center(
                        child: Image.asset(policiesData[index].image),
                      ),
                    ),
                  ),
                  Text(
                    policiesData[index].name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
