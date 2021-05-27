import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

class SignupChangePassword extends StatefulWidget {
  @override
  _SignupChangePasswordState createState() => _SignupChangePasswordState();
}

class _SignupChangePasswordState extends State<SignupChangePassword> {
  bool hiddenPassword = true;
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
          onPressed: () {},
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
                  "You'll need a password",
                  style: TextConfig.title1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Make sure it's 8 characters or more",
                style: TextConfig.body1,
              ),
              SizedBox(
                height: 50,
              ),
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
                      borderSide: BorderSide(color: ColorConfig.primarycolor),
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: ColorConfig.primarycolor,
                    ),
                  ),
                  suffixIcon: IconButton(
                    color: ColorConfig.bodytext,
                    icon: Icon(
                      hiddenPassword ? Icons.visibility_off : Icons.visibility,
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
                    //         builder: (context) => ResetPassword()));
                  },
                  child: Center(
                    child: Text(
                      "Contine",
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
