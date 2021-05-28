import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Screens/EditProfile/main.dart';
import 'package:phuble/Screens/ViewProfile/Phubles.dart';
import 'package:phuble/Screens/ViewProfile/Posts.dart';
import 'package:phuble/Screens/ViewProfile/Shared.dart';

import 'package:phuble/Themes/TypoGraphy.dart';

class Viewprofile extends StatefulWidget {
  @override
  _ViewprofileState createState() => _ViewprofileState();
}

class _ViewprofileState extends State<Viewprofile>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 1,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
              Container(
                height: 230,
                child: Stack(
                  children: [
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Colors.grey,
                        ),
                      ),
                      child: Image(
                        image: NetworkImage(
                          'https://th.bing.com/th/id/Rdf131314efbe77d33d647e2f8546bb30?rik=RIQvPUmALayTZg&riu=http%3a%2f%2fwonderfulengineering.com%2fwp-content%2fuploads%2f2014%2f01%2fhighway-wallpapers.jpeg&ehk=Lrfw6i9cGwHeOOG2nrC9eDghz2q6dBSq6d%2bIjMULh1Q%3d&risl=&pid=ImgRaw',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 130,
                      left: 20,
                      child: Container(
                          height: 100,
                          width: 100,
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
                          )),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(bottom: 15.0, right: 15.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Editprofile()));
                          },
                          child: Text(
                            "Edit Profile",
                            style: TextConfig.body,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mohamed Hana",
                      style: TextConfig.title1,
                    ),
                    Text(
                      "@mohamedhana",
                      style: TextConfig.body4,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "User bio is here...",
                      style: TextConfig.body,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesome.calendar,
                          color: Colors.grey,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text(
                            "Joined May 2021",
                            style: TextConfig.body4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              "30",
                              style: TextConfig.head1,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1.0),
                              child: Text(
                                "Following",
                                style: TextConfig.body4,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Row(
                          children: [
                            Text(
                              "0",
                              style: TextConfig.head1,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1.0),
                              child: Text(
                                "Followers",
                                style: TextConfig.body4,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              "30",
                              style: TextConfig.head1,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1.0),
                              child: Text(
                                "Likes",
                                style: TextConfig.body4,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Row(
                          children: [
                            Text(
                              "0",
                              style: TextConfig.head1,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1.0),
                              child: Text(
                                "Dislike",
                                style: TextConfig.body4,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: ColorConfig.primarycolor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: ColorConfig.primarycolor,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "Posts",
                        style: TextConfig.body,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Shared",
                        style: TextConfig.body,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Phubles",
                        style: TextConfig.body,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.4,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Posts(),
                    Share(),
                    Phubles(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
