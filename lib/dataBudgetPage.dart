import 'package:counter_7/models/budget.dart';
import 'package:counter_7/models/dataBudgetList.dart';
import 'package:counter_7/tambahBudget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/services.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  @override
  State<DataBudgetPage> createState() => _DataBudgetPage();
}

class _DataBudgetPage extends State<DataBudgetPage> {
  final _formKey = GlobalKey<FormState>();

  // ignore: unused_field
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      drawer: Drawer(
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
                  MaterialPageRoute(
                      builder: (context) => const DataBudgetPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DataBudgetList(Budget.data), //TAMBAHKAN BAGIAN INI
          ],
        ),
      ),
    );
  }
}
