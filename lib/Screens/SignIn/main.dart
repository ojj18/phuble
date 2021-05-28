import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Screens/ForgotPassword/main.dart';
import 'package:phuble/Screens/SignUp/main.dart';

import 'package:phuble/Screens/UserBanned/main.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "PHUBLE",
                        style: TextConfig.head,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Center(
                          child: Text(
                            "Create account",
                            style: TextConfig.body,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Text(
                      "Log in",
                      style: TextConfig.title1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: TextConfig.textInput,
                    keyboardType: TextInputType.emailAddress,
                    validator: (input) => !input.contains('@')
                        ? "Please enter your phone or email"
                        : null,
                    decoration: InputDecoration(
                      hintText: "Phone or Email",
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
                  SizedBox(height: 20),
                  TextFormField(
                    obscureText: hiddenPassword,
                    style: TextConfig.textInput,
                    keyboardType: TextInputType.name,
                    validator: (input) =>
                        input.length < 3 ? "Please enter the password" : null,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextConfig.textInput,
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorConfig.errorColor,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorConfig.bodytext),
                          borderRadius: BorderRadius.circular(5)),
                      enabledBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: ColorConfig.bodytext,
                        ),
                      ),
                      suffixIcon: IconButton(
                        color: ColorConfig.bodytext,
                        icon: Icon(
                          hiddenPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            if (hiddenPassword) {
                              hiddenPassword = false;
                            } else {
                              hiddenPassword = true;
                            }
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: checkBox,
                              activeColor: ColorConfig.primarycolor,
                              onChanged: (bool newvalue) {
                                setState(() {
                                  checkBox = newvalue;
                                });
                              }),
                          SizedBox(width: 1),
                          Text(
                            "Remember me",
                            style: TextConfig.text1,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));
                        },
                        child: Center(
                          child: Text(
                            "Forgot password?",
                            style: TextConfig.body1,
                          ),
                        ),
                      ),
                    ],
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserBanned()));
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
          ],
        ),
      ),
    );
  }
}
