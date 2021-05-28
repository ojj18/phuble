import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

class SetupUserbio extends StatefulWidget {
  @override
  _SetupUserbioState createState() => _SetupUserbioState();
}

class _SetupUserbioState extends State<SetupUserbio> {
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
                  "Describe yourself",
                  style: TextConfig.title1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "What makes you special? Don't think so hard, just have fun with it",
                style: TextConfig.body1,
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                maxLength: 160,
                maxLines: 10,
                style: TextConfig.textInput,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Your bio",
                  hintStyle: TextConfig.textInput,
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
                      "Next",
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
