import 'package:flutter/material.dart';
import 'package:stock_data/widgets/trad_code_list_view.dart';

class TradeCodeList extends StatelessWidget {
static final String routeName = '/trade_code_list';  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trade code list'),
      ),
      body: TradCodeListView(),
    );
  }
}