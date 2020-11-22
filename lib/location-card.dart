import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  
  final locationName;
  final onClick;
  LocationCard(this.locationName,this.onClick);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Card(
        margin: EdgeInsets.all(8),
        elevation: 1,
        child: Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(locationName.toString())
              ],
            )
        ),



      ),
    );
  }
}
