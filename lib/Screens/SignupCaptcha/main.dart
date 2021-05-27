import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Screens/SignUp/main.dart';

import 'package:phuble/Themes/TypoGraphy.dart';

class Signupcaptcha extends StatefulWidget {
  @override
  _SignupcaptchaState createState() => _SignupcaptchaState();
}

class _SignupcaptchaState extends State<Signupcaptcha> {
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
      appBar: AppBar(
        backgroundColor: ColorConfig.primarycolor1,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUp()));
          },
          icon: Icon(
            CupertinoIcons.left_chevron,
          ),
          color: ColorConfig.bodytext,
        ),
        centerTitle: true,
        title: Text(
          "PHUBLE",
          style: TextConfig.head,
        ),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  "Verification",
                  style: TextConfig.title1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Please solve this puzzle so we know you are a real person",
                style: TextConfig.body1,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Image(
                  image: AssetImage('assets/images/captcha.png'),
                ),
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
            ],
          ),
        ),
      ),
    );
  }
}
