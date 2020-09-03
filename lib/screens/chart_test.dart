import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
class ChartTest extends StatelessWidget {
  static final routeName = 'ctest';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chart test'),
      ),
        body: Container(
          child: charts.TimeSeriesChart(_createSampleData(), animate: false),
        )
      );
  }
  static List<charts.Series<LinearSales, DateTime>> _createSampleData() {
    final data = [
      new LinearSales(DateTime(2020,5,12), 5),
      new LinearSales(DateTime(2020,5,13), 25),
      new LinearSales(DateTime(2020,5,14), 100),
      new LinearSales(DateTime(2020,5,15), 75),
      new LinearSales(DateTime(2020,5,15), 70),
      new LinearSales(DateTime(2020,6,1), 85),
      new LinearSales(DateTime(2020,6,2), 95),
      new LinearSales(DateTime(2020,6,10), 105),
      new LinearSales(DateTime(2020,6,15), 99),
    ];
    return [charts.Series<LinearSales, DateTime>(
      id: 'Sales',
      data: data,
      domainFn: (LinearSales ls,_) => ls.year,
      measureFn: (LinearSales ls,_) => ls.sales
    )];
    
  }
}
class LinearSales {
  final DateTime year;
  final int sales;
  LinearSales(this.year, this.sales);
}
