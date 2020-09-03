import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:stock_data/screens/trade_code_list_screen.dart';
import 'package:firebase_database/firebase_database.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';
  final String _path = 'jsondata';
  final _dbRef = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    // firebaseTest();
    List<Map> data = [];
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock data'),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.pushNamed(context, TradeCodeList.routeName);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: _dbRef.child(_path).limitToFirst(500).once(),
          builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
            switch (snapshot.connectionState) {
              case (ConnectionState.waiting):
                return Center(child: SpinKitCubeGrid(color: Colors.blueAccent));
              case (ConnectionState.done):
                if (snapshot.hasData) {
                  // print(snapshot.data.value);

                  
                  snapshot.data.value.forEach((d){
                    data.add(d);
                    // print(d);
                  });
                  // print(data);
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Table(
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          border: TableBorder.all(),
                          columnWidths: {
                            0:FractionColumnWidth(0.24),
                            1:FractionColumnWidth(0.24),
                            2:FractionColumnWidth(0.13),
                            3:FractionColumnWidth(0.13),
                            4:FractionColumnWidth(0.13),
                            5:FractionColumnWidth(0.13),
                          },
                          children: [
                            TableRow(
                              children: [
                                Text('Trade Code'),
                                Text('Volume'),
                                Text('Open'),
                                Text('Close'),
                                Text('High'),
                                Text('Low')
                              ]
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: SingleChildScrollView(
                            child: Table(
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            border: TableBorder.all(),
                            columnWidths: {
                              0:FractionColumnWidth(0.24),
                              1:FractionColumnWidth(0.24),
                              2:FractionColumnWidth(0.13),
                              3:FractionColumnWidth(0.13),
                              4:FractionColumnWidth(0.13),
                              5:FractionColumnWidth(0.13),
                            },
                            children: data.map((e){
                              return TableRow(
                              children: [
                                Text(e['trade_code']),
                                Text(e['volume']),
                                Text(e['open']),
                                Text(e['close']),
                                Text(e['high']),
                                Text(e['low'])
                              ]
                            );

                            }).toList(),
                          ),
                        ),
                      )
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Container(
                    child: Text('Error loading data'),
                  );
                }
                break;
              default:
                return Container(
                  child: Text('Error loading data'),
                );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
