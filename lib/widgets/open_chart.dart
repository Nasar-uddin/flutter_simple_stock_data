import 'package:flutter/material.dart';
import 'package:stock_data/models/company.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class OpenChart extends StatelessWidget {
  final List<Company> companies;
  OpenChart(this.companies);

  @override
  Widget build(BuildContext context) {
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
}