import 'dart:js';

import 'package:get/get.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

class PageViewController extends GetxController {
  var isLoading = true.obs;
  var mySlidesImages = List.empty().obs;

  @override
  void onInit() {
    ReadData();
    super.onInit();
  }

  void ReadData() async {
    await DefaultAssetBundle.of(context as BuildContext)
        .loadString("json/slides_imagesjson.json")
        .then((value) {
      mySlidesImages = json.decode(value);
    });
  }
}
