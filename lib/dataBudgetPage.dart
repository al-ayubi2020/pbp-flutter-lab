import 'package:counter_7/models/budget.dart';
import 'package:counter_7/models/dataBudgetList.dart';
import 'package:counter_7/models/drawer.dart';
import 'package:flutter/material.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  @override
  State<DataBudgetPage> createState() => _DataBudgetPage();
}

class _DataBudgetPage extends State<DataBudgetPage> {
  // ignore: unused_field
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      drawer: const DrawerCustom(),
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
