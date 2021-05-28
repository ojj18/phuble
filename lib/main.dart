import 'package:flutter/material.dart';
import 'package:phuble/Screens/SignIn/main.dart';
import 'package:phuble/Themes/SizeConfig.dart';
import 'package:phuble/Themes/TypoGraphy.dart';

main() => runApp(
      LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              SizeConfig().init(constraints, orientation);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: SignIn(),
                theme: ThemeData(
                  // splashColor: ColorConfig.primarycolor,
                  accentColor: ColorConfig.primarycolor,
                ),
              );
            },
          );
        },
      ),
    );
