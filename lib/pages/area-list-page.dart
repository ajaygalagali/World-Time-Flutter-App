import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../location-card.dart';

class AreaListPage extends StatefulWidget {
  @override
  _AreaListPageState createState() => _AreaListPageState();
}

class _AreaListPageState extends State<AreaListPage> {

  var areas = ['Africa','America','Antarctica','Asia',
  'Atlantic','Australia','Europe'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Area"),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: areas.map((area) => LocationCard(area,(){
                Navigator.pushNamed(context, "/locationlist",arguments:{
                  'area':area
                });
              })).toList() ,

            ),
          )
        ],
      ),
    );
  }
}
