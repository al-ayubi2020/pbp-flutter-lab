import 'package:counter_7/components/drawer.dart';
import 'package:counter_7/models/watch_list_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WatchListDetail extends StatelessWidget {
  final int pk;
  const WatchListDetail(this.pk, {super.key});

  Future<List<WatchListItem>> fetchToDo() async {
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
    List<WatchListItem> listToDo = [];
    for (var d in data) {
      if (d != null) {
        listToDo.add(WatchListItem.fromJson(d));
      }
    }
    return listToDo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Watch List'),
        ),
        drawer: const DrawerCustom(),
        body: FutureBuilder(
            future: fetchToDo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => GestureDetector(
                            child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text(
                                "${snapshot.data![index].fields.title}",
                                style: const TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 10,
                                width: 10,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Realease Date: ",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                    width: 8,
                                  ),
                                  Text(
                                    DateFormat.yMMMMd('en_US').format(snapshot
                                        .data![index].fields.releaseDate),
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Rating: ",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                    width: 8,
                                  ),
                                  Text(
                                    "${snapshot.data![index].fields.rating}/5",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Status: ",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                    width: 8,
                                  ),
                                  Text(
                                    snapshot.data![index].fields.watched == true
                                        ? "watched"
                                        : "not watched",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    "Review : ",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Text(
                                "${snapshot.data![index].fields.review}",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Kembali",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        )));
              }
            }));
  }
}
