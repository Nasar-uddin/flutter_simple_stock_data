import 'package:flutter/material.dart';
import 'package:stock_data/constant/trad_codes.dart';
import 'package:stock_data/screens/details_data_screen.dart';

class TradCodeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: tradCodes.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DetailsView.routeName,
                    arguments: tradCodes[index]);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        blurRadius: 10,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Text(
                  tradCodes[index],
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          }),
    );
  }
}
