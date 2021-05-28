import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Screens/DisLikes/list.dart';
import 'package:phuble/Screens/likes/list.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

class DisLiked extends StatefulWidget {
  @override
  _DisLikedState createState() => _DisLikedState();
}

class _DisLikedState extends State<DisLiked> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: HexColor("#00897b"),
        statusBarBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConfig.primarycolor1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.left_chevron,
          ),
          color: ColorConfig.bodytext,
        ),
        title: Text(
          "Disikes",
          style: TextConfig.body,
        ),
        elevation: 0.0,
      ),
      body: Container(
        //  padding: EdgeInsets.all(8.0),
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/json/disliked.json'),
            builder: (context, snapshot) {
              var disliked_data = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      children: [
                        Container(
                          child: DisLikedList(
                            disliked_data: disliked_data,
                            index: index,
                          ),
                        ),
                        //  SizedBox(height: 5),
                        Container(
                            height: 1, color: Colors.grey.withOpacity(0.5)),
                      ],
                    ),
                  );
                },
                itemCount: disliked_data == null ? 0 : disliked_data.length,
              );
            }),
      ),
    );
  }
}
