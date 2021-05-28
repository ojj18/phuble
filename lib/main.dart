import 'package:flutter/material.dart';
import 'package:phuble/Screens/DisLikes/main.dart';
import 'package:phuble/Screens/Following/main.dart';
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
                home: Following(),
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
