import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Screens/SignIn/main.dart';
import 'package:phuble/Screens/SignupTerms/main.dart';
import 'package:phuble/Screens/ViewProfile/main.dart';

import 'package:phuble/Themes/TypoGraphy.dart';

class Editprofile extends StatefulWidget {
  @override
  _EditprofileState createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
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
      appBar: AppBar(
        backgroundColor: ColorConfig.primarycolor1,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Viewprofile()));
          },
          icon: Icon(
            CupertinoIcons.left_chevron,
            size: 20,
          ),
          color: ColorConfig.bodytext,
        ),
        //centerTitle: true,
        title: Text(
          "Edit profile",
          style: TextConfig.body,
        ),
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Viewprofile()));
              },
              child: Center(
                child: Text(
                  "save",
                  style: TextConfig.body,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
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
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          MaterialIcons.camera_alt,
                          size: 30,
                        ),
                      ),
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
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            MaterialIcons.camera_alt,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextConfig.textInput,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: TextConfig.textInput,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Mohamed Hana",
                      hintStyle: TextConfig.textInput,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorConfig.bodytext,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      enabledBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: ColorConfig.bodytext,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Bio",
                    style: TextConfig.textInput,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: TextConfig.textInput,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Lorem ipsum, test",
                      hintStyle: TextConfig.textInput,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorConfig.bodytext,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      enabledBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: ColorConfig.bodytext,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Birth date",
                    style: TextConfig.textInput,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: TextConfig.textInput,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: "May, 15 2021",
                      hintStyle: TextConfig.textInput,
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorConfig.errorColor,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorConfig.bodytext,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      enabledBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: ColorConfig.bodytext,
                        ),
                      ),
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
