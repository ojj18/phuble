import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

class Phubles extends StatefulWidget {
  @override
  _PhublesState createState() => _PhublesState();
}

class _PhublesState extends State<Phubles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/json/stock.json'),
          builder: (context, snapshot) {
            var stock_data = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Container(
                        child: PhubleList(
                          stock_data: stock_data,
                          index: index,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(height: 1, color: Colors.grey.withOpacity(0.5)),
                    ],
                  ),
                );
              },
              itemCount: stock_data == null ? 0 : stock_data.length,
            );
          }),
    );
  }
}

class PhubleList extends StatelessWidget {
  PhubleList({Key key, this.stock_data, this.index}) : super(key: key);
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
