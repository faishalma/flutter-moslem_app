import 'package:flutter/material.dart';
import 'package:moslem_app/constants.dart';
import 'package:moslem_app/screen/namescreen/components/body.dart';

class NameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: cPrimaryColor,
      centerTitle: true,
      title: Text(
        "Asma'ul Husna",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
