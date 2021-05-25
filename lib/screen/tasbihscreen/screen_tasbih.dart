import 'package:flutter/material.dart';

import 'package:moslem_app/constants.dart';
import 'package:moslem_app/screen/tasbihscreen/components/body.dart';

class TasbihScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: cPrimaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: cPrimaryColor,
      centerTitle: true,
      elevation: 2,
      title: Text(
        "Tasbih",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
