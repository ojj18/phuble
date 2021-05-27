import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Screens/SignIn/main.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

class UserBanned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: HexColor("#00897b"),
        statusBarBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: ColorConfig.primarycolor1,
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 150, left: 15.0, right: 15.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image(
                      color: ColorConfig.primarycolor,
                      image: AssetImage(
                        "assets/images/userbanned.png",
                      ),
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "    Your account has been suspended.\nPlease contact support for more details.",
                    style: TextConfig.body1,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Mobile: 01020442063",
                    style: TextConfig.body1,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Email: suppor@phuble.com",
                    style: TextConfig.body1,
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: 50,
                    width: 200,
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Center(
                        child: Text(
                          "Back to log in",
                          style: TextConfig.button,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
