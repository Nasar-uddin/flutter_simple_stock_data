import 'package:flutter/material.dart';
import 'package:stock_data/screens/details_data_screen.dart';
import 'package:stock_data/screens/home_screen.dart';
import 'package:stock_data/screens/trade_code_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context)=> HomeScreen(),
        TradeCodeList.routeName : (context) => TradeCodeList(),
        DetailsView.routeName : (context) => DetailsView()
      },
    );
  }
}
