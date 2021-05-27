import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Screens/SignupStocks/list.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

class SignupStocks extends StatefulWidget {
  @override
  _SignupStocks createState() => _SignupStocks();
}

class _SignupStocks extends State<SignupStocks> {
  bool hiddenPassword = true;
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: HexColor("#00897b"),
        statusBarBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 68,
              width: MediaQuery.of(context).size.width,
              color: ColorConfig.primarycolor1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "PHUBLE",
                    style: TextConfig.head,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Text(
                      "Follow stocks",
                      style: TextConfig.title1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Start follow stocks and interact with markets",
                    style: TextConfig.body1,
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 350,
                    child: FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('assets/json/stock.json'),
                        builder: (context, snapshot) {
                          var stock_data =
                              json.decode(snapshot.data.toString());
                          return ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Container(
                                  child: StockList(
                                    stock_data: stock_data,
                                    index: index,
                                  ),
                                ),
                              );
                            },
                            itemCount:
                                stock_data == null ? 0 : stock_data.length,
                          );
                        }),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // border: Border.all(
                      //   width: 5,
                      //   color: ColorConfig.primarycolor,
                      // ),
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: ColorConfig.primarycolor,
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => UserBanned()));
                      },
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextConfig.button,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Skip for now?",
                      style: TextConfig.body1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
