import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../../../data.dart';

class RemoteTestData {
  getHomeData() async {
    final String response = await rootBundle.loadString('assets/json/budz_home.json');
    final data = await json.decode(response);
    return HomeModel.fromJson(data);
  }
}