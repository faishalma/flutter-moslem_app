import 'package:flutter/material.dart';
import 'package:moslem_app/constants.dart';
import 'package:moslem_app/screen/splashscreen/screen_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moslem',
      theme: ThemeData(
        fontFamily: "Poppins",
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
        primaryColor: cPrimaryColor,
        scaffoldBackgroundColor: cBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
