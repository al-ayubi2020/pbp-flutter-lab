import 'package:flutter/material.dart';
import 'package:counter_7/models/budget.dart';

class DataBudgetList extends StatelessWidget {
  final List<Budget>
      budgets; //DEFINISIKAN VARIABLE CARTS YANG BERFUNGSI UNTUK MENAMPUNG LIST DATA, DIMANA TIPENYA MENGGUNAKAN LIST DAN STRUKTUR DATANYA MERUJUK PADA MODEL Cart

  const DataBudgetList(this.budgets,
      {super.key}); //BUAT CONSTRUCTOR UNTUK MEMINTA DATA

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      //APABILA CARTS KOSONG
      child: budgets.isEmpty
          ? Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Text("No Transaction Data"),
              ],
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                //DIDALAM BUILDER INI WIDGET AKAN DILOOPING BERDASARKAN JUMLAH DATA, DAN INDEX ARRAYNYA AKAN DIUPDATE KE DALAM VARIABLE INDEX
                return Card(
                    child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        budgets[index].judul,
                        style: TextStyle(fontSize: 24),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            budgets[index].nominal.toString(),
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            budgets[index].tipe,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                ));
              },
              itemCount: budgets
                  .length, //JUMLAH ITEMNYA BERDASARKAN JUMLAH DATA YANG ADA DI DALAM CARTS
            ),
    );
  }
}
