import 'package:flutter/material.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

class StockList extends StatelessWidget {
  StockList({Key key, this.stock_data, this.index}) : super(key: key);
  final stock_data;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "" + stock_data[index]['name'],
                    style: TextConfig.body2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 5.0),
                    child: Text(
                      "" + stock_data[index]['code'],
                      style: TextConfig.body3,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Text(
                    "" + stock_data[index]['stocks'],
                    style: TextConfig.body1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 5.0),
                    child: Text(
                      "" + stock_data[index]['percent'],
                      style: TextConfig.body3,
                    ),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "Follow",
              style: TextConfig.body1,
            ),
          ),
        ],
      ),
    );
  }
}
