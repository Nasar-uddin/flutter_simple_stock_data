import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:stock_data/models/company.dart';
import 'package:stock_data/widgets/open_chart.dart';

class DetailsView extends StatelessWidget {
  static final String routeName = '/details';
  final String _path = 'jsondata';
  final _dbRef = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    String code = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(code),
      ),
      body: FutureBuilder(
        future:
            _dbRef.child(_path)
            .orderByChild('trade_code').equalTo(code)
            .once(),
        builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return SpinKitSquareCircle(
                color: Colors.blueAccent,
              );
            case ConnectionState.done:
              if (snapshot.hasData) {
                // print(snapshot.data.value);
                // it get data as map from db

                // convert this map into list
                List<Map> data = [];
                List<Company> cdata = [];
                int serial = 1;
                snapshot.data.value.forEach((key, value) {
                  data.add(value);
                  cdata.add(new Company.fromMap(value,serial));
                  serial++;
                  // print(value);
                });
                // print(snapshot.data.value['88']);
                // print(cdata[4].toMap()['serial']+1);
                // print(data);
                return OpenChart(cdata);
              } else if (snapshot.hasError) {
                return Container(
                  child: Text('Error loading data'),
                );
              }
              break;
            default:
              return Container(
                child: Text('No data'),
              );
          }
        },
      ),
    );
  }

  ListView oneCompanyDataList(List<Map> data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(
              data[index]['trade_code'] + '-' + data[index]['open'].toString(),
              style: TextStyle(fontSize: 18),
            ),
          );
        });
  }

  void firebaseTest(String code) async {
    final String path = 'stockdata';
    final _dbRef = FirebaseDatabase.instance.reference();
    _dbRef
        .child(path)
        .orderByChild('trade_code')
        .equalTo('AAMRATECH')
        .limitToFirst(4)
        .once()
        .then((snapshot) {
      print('........');
      snapshot.value.forEach((key, value) {
        print(value);
      });
      print('........');
    });
  }
}

