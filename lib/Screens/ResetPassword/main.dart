import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

class ResetPassword extends StatelessWidget {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      "We send a code to your email",
                      style: TextConfig.title1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Enter the 6-digit verification code sent to\nm******@gmail.com",
                    style: TextConfig.body1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    style: TextConfig.textInput,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "6 digits code",
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
                        "Resend code",
                        style: TextConfig.body2,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "If you don't see the email in you inbox, check your\nspam folder",
                    style: TextConfig.body3,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Can't access this email?",
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
