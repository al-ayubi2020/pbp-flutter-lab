import 'package:counter_7/dataBudgetPage.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/tambahBudget.dart';
import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          ),
          ListTile(
            title: const Text('Counter'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const MyHomePage(title: 'Flutter Demo Home Page')),
              );
            },
          ),
          // ignore: prefer_const_constructors
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const TambahBudgetPage()),
              );
            },
          ),
          // ignore: prefer_const_constructors
          ListTile(
            title: const Text('Daftar Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const DataBudgetPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}