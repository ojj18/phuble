import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:phuble/Screens/Following/list.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

class Following extends StatefulWidget {
  @override
  _FollowingState createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
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
          "Following",
          style: TextConfig.body,
        ),
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Entypo.add_user,
                color: ColorConfig.bodytext,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          //  padding: EdgeInsets.all(8.0),
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/json/stock.json'),
              builder: (context, snapshot) {
                var follow_data = json.decode(snapshot.data.toString());
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: [
                          Container(
                            child: FollowList(
                              follow_data: follow_data,
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
                  itemCount: follow_data == null ? 0 : follow_data.length,
                );
              }),
        ),
      ),
    );
  }
}
