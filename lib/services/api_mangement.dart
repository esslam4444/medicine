import 'dart:convert';
import 'dart:io';

import '../models/main_page_list.dart';
import 'package:http/http.dart' as http;

class ApiMange {
  Future<List<MainPageList>> getMainList() async {
    try {
      var request = http.Request('GET',
          Uri.parse('https://in.eidc.gov.ly/api/localapi/GetTypeVehicles'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var responses = await http.Response.fromStream(response);

        List<MainPageList> state = (jsonDecode(responses.body) as List)
            .map((perItem) => MainPageList.fromJson(perItem))
            .toList();
        return state;
      }
      return [];
    } on HttpException {
      return [];
    }
  }
}
