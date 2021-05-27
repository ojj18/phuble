import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Screens/SignUp/main.dart';

import 'package:phuble/Themes/TypoGraphy.dart';

class SignupVerify extends StatefulWidget {
  @override
  _SignupVerifyState createState() => _SignupVerifyState();
}

class _SignupVerifyState extends State<SignupVerify> {
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
                  "We send you a code",
                  style: TextConfig.title1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter code sent to your email\nmohamed.hana0@gmail.com",
                style: TextConfig.body1,
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                style: TextConfig.textInput,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Verification code",
                  hintStyle: TextConfig.textInput,
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConfig.errorColor,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConfig.primarycolor,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: ColorConfig.primarycolor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Didn't receive the code?",
                    style: TextConfig.body2,
                  ),
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
                      "Submit",
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
