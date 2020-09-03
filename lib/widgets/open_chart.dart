import 'package:flutter/material.dart';
import 'package:stock_data/models/company.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class OpenChart extends StatefulWidget {
  final List<Company> companies;
  OpenChart(this.companies);

  @override
  _OpenChartState createState() => _OpenChartState();
}

class _OpenChartState extends State<OpenChart> {
  String activeGraph = 'open';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: charts.LineChart(_lineChart(),animate: true),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: Text('Open'),
                  onPressed: (){
                    setState(() {
                      activeGraph = 'open';
                    });
                  },
                ),
                FlatButton(
                  child: Text('Close'),
                  onPressed: (){
                    setState(() {
                      activeGraph = 'close';
                    });
                  },
                ),
                FlatButton(
                  child: Text('High'),
                  onPressed: (){
                    setState(() {
                      activeGraph = 'high';
                    });
                  },
                ),FlatButton(
                  child: Text('Volume'),
                  onPressed: (){
                    setState(() {
                      activeGraph = 'volume';
                    });
                  },
                )
              ],
            ),
          ),
        ),
        
      ],
    );
  }

  List<charts.Series<Company,int>> _lineChart(){
    switch(activeGraph){
      case('open'):
        return [
        charts.Series<Company,int>(
        data: widget.companies,
        id: 'Open',
        domainFn: (Company cp,_) =>cp.serial,
        measureFn: (Company cp,_) =>cp.open
      )];
      case('close'):
        return [
        charts.Series<Company,int>(
        data: widget.companies,
        id: 'Open',
        domainFn: (Company cp,_) =>cp.serial,
        measureFn: (Company cp,_) =>cp.close
      )];
      case('high'):
        return [
        charts.Series<Company,int>(
        data: widget.companies,
        id: 'Open',
        domainFn: (Company cp,_) =>cp.serial,
        measureFn: (Company cp,_) =>cp.high
      )];
      default:
        return [
        charts.Series<Company,int>(
        data: widget.companies,
        id: 'Open',
        domainFn: (Company cp,_) =>cp.serial,
        measureFn: (Company cp,_) =>cp.volume
      )];
    }
  }
}