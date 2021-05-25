import 'package:flutter/material.dart';
import 'package:moslem_app/models/names_data.dart';
import 'package:moslem_app/screen/namescreen/components/card_name.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
              itemCount: nameDatas.length,
              itemBuilder: (context, index) => CardName(
                nameData: nameDatas[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
