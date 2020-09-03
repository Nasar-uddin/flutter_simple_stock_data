import 'package:flutter/material.dart';
import 'package:stock_data/widgets/trad_code_list_view.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';
  @override
  Widget build(BuildContext context) {
    // firebaseTest();
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock data'),
      ),
      body: TradCodeListView(),
    );
  }

 
}
