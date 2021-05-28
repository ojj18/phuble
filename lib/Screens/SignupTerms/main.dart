import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Screens/SignUp/main.dart';

import 'package:phuble/Themes/TypoGraphy.dart';

class SignupTerms extends StatefulWidget {
  @override
  _SignupTermsState createState() => _SignupTermsState();
}

class _SignupTermsState extends State<SignupTerms> {
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
                  "Create your account",
                  style: TextConfig.title1,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextConfig.textInput,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Mohamed Hana",
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
                  hintText: "mohamed.hana0@gmail.com",
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
                style: TextConfig.textInput,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: "May 18,1991",
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
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc non convallis nibh, nec molestie turpis. Sed sem lacus, hendrerit eu convallis at, varius vel risus. Etiam nunc est, posuere ac erat ut, imperdiet congue ex. Nullam in maximus libero. Nulla convallis in ex ac ultrices. Cras lobortis venenatis libero vitae vestibulum. Cras libero urna, placerat at ligula eu, malesuada egestas leo. Nullam ipsum metus, fringilla nec dolor quis, faucibus pharetra est.",
                style: TextConfig.body3,
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
                      "Sign up",
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
