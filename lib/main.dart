import 'package:chinese_tide_creation/main_page.dart';
import 'package:chinese_tide_creation/tide_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light));
    return MaterialApp(
      title: "我潮国韵",
      theme: ThemeData(
        primarySwatch: MaterialColor(
            0xFF001D40,
            {
              50:Color(0xFFc4cbdb),
              100:Color(0xFF9fa9c3),
              200:Color(0xFF32436b),
              300:Color(0xFF32436b),
              400:Color(0xFF001d40),
              500:Color(0xFF001d40),
              600:Color(0xFF001d40),
              700:Color(0xFF001d40),
              800:Color(0xFF24263b),
              900:Color(0xFF00001b)
            }
        ),
        primaryColorLight: Color(0xFF32436b),
        primaryColor: Color(0xFF001d40),
        primaryColorDark: Color(0xFF00001b),
        accentColor: MaterialColor(
            0xFF001D40,
            {
              200:Color(0xFFffd165),
              500:Color(0xFFdda035),
              700:Color(0xFFa77200)
            }
        ),
        cardColor: Color(0xFFF5F5F5),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: TideColors.darkGrey,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            letterSpacing: 0.15
          ),
          bodyText2: TextStyle(
            color: TideColors.darkGrey,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
            letterSpacing: 0.25
          ),
          subtitle2: TextStyle(
            color: TideColors.darkGrey,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
            letterSpacing: 0.1
          )
        )
      ),
      home: MainPage(),
    );
  }
}