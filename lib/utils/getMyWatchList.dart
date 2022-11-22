// ignore_for_file: file_names

import 'package:counter_7/models/watchListItem.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetMyWatchList {
  Future<List<WatchListItem>> getWatchList() async {
    var url = Uri.parse(
        'https://web-production-8ac6.up.railway.app/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object ToDo
    List<WatchListItem> watchList = [];
    for (var d in data) {
      if (d != null) {
        watchList.add(WatchListItem.fromJson(d));
      }
    }
    return watchList;
  }

  Future<List<WatchListItem>> getDetail(pk) async {
    var url = Uri.parse(
        'https://web-production-8ac6.up.railway.app/mywatchlist/json/$pk');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object ToDo
    List<WatchListItem> watchList = [];
    for (var d in data) {
      if (d != null) {
        watchList.add(WatchListItem.fromJson(d));
      }
    }
    return watchList;
  }

  updateStatus(pk) async {
    var url = Uri.parse(
        'https://web-production-8ac6.up.railway.app/mywatchlist/json/update/$pk');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // melakukan decode response menjadi bentuk json

    // melakukan konversi data json menjadi object ToDo
  }
}
