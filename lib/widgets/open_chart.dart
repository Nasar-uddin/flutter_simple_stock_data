import 'package:flutter/material.dart';
import 'package:stock_data/models/company.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class OpenChart extends StatelessWidget {
  final List<Company> companies;
  OpenChart(this.companies);

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(_lineChart(),animate: !true);
  }

  Container timeData() {
    return Container(
    child: charts.TimeSeriesChart([
                charts.Series<Company, DateTime>(
                    data: companies,
                    id: 'Open',
                    domainFn: (Company cmp, _) => cmp.date,
                    measureFn: (Company cmp, _) => cmp.open
                  )
              ], animate: false),
  );
  }
  List<charts.Series<Company,int>> _lineChart(){
    
    return [
      charts.Series<Company,int>(
        data: companies,
        id: 'Open',
        domainFn: (Company cp,_) =>cp.serial,
        measureFn: (Company cp,_) =>cp.open
      ),
      charts.Series<Company,int>(
        data: companies,
        id: 'High',
        displayName: 'High',
        domainFn: (Company cp,_) =>cp.serial,
        measureFn: (Company cp,_) =>cp.high
      ),
      charts.Series<Company,int>(
        data: companies,
        id: 'Close',
        displayName: 'High',
        domainFn: (Company cp,_) =>cp.serial,
        measureFn: (Company cp,_) =>cp.close
      )
    ];
  }
}