import 'package:flutter/material.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

class FollowList extends StatefulWidget {
  FollowList({Key key, this.follow_data, this.index}) : super(key: key);
  final follow_data;
  int index;
  @override
  _FollowListState createState() => _FollowListState();
}

class _FollowListState extends State<FollowList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: ColorConfig.primarycolor1,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://c.pxhere.com/photos/44/dc/smiling_boy_man_professional_happy_people_young_portrait-865531.jpg!d',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mohamed Hana",
                        style: TextConfig.body2,
                      ),
                      Text(
                        "@mohamedhana",
                        style: TextConfig.body1,
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
        ],
      ),
    );
  }
}
