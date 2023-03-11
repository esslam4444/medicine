import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'AppColor.dart';
import 'models/all_policies_model.dart';

class ThreePolicyPages extends StatelessWidget {
  const ThreePolicyPages(
      {super.key, required this.allPoliciesModel, required this.policiesData});
  final AllPoliciesModel allPoliciesModel;
  final List<AllPoliciesModel> policiesData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CPrimaryColor,
        title: Text(allPoliciesModel.name),
      ),
      body: ListView(children: [
        Container(
          color: Colors.blue,
          child: ListTile(
            title: Text(
              allPoliciesModel.listTileName,
              // 'تجرربةة',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
