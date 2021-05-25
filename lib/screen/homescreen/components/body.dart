import 'package:flutter/material.dart';
import 'package:moslem_app/screen/homescreen/components/card_menu.dart';
import 'package:moslem_app/screen/homescreen/components/time.dart';
import 'package:moslem_app/screen/namescreen/screen_name.dart';
import 'package:moslem_app/screen/tasbihscreen/screen_tasbih.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          height: size.height,
          decoration: BoxDecoration(
            color: Color(0xFF22BB9F),
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage("assets/images/mosque.png"),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search", border: InputBorder.none),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Time()),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      CardMenu(
                        svgSrc: "assets/images/names.svg",
                        title: "NAMES",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return NameScreen();
                            }),
                          );
                        },
                      ),
                      CardMenu(
                        svgSrc: "assets/images/tasbih.svg",
                        title: "TASBIH",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return TasbihScreen();
                            }),
                          );
                        },
                      ),
                      CardMenu(
                        svgSrc: "assets/images/prayers.svg",
                        title: "PRAYERS",
                      ),
                      CardMenu(
                        svgSrc: "assets/images/kibla.svg",
                        title: "QIBLA",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
