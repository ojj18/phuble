import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:phuble/Themes/TypoGraphy.dart';

class SignupProfilepic extends StatefulWidget {
  @override
  _SignupProfilepicState createState() => _SignupProfilepicState();
}

class _SignupProfilepicState extends State<SignupProfilepic> {
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
                      "Pick a profile picture",
                      style: TextConfig.title1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Have a favorite selfie? Upload it now",
                    style: TextConfig.body1,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: ColorConfig.primarycolor,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              MaterialIcons.insert_photo,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Upload",
                              style: TextConfig.body1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
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
