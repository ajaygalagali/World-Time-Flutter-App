import 'dart:convert';

import 'package:http/http.dart';

var BASE_URL = "https://worldtimeapi.org/api/timezone/";

class WorldTime{
  var location;
  var time;

  WorldTime(this.location);


  Future getTime() async{
    try{
      var response = await get(BASE_URL+location);
      var data = jsonDecode(response.body);
      var dateTime = data['datetime'];
      var offset = data['utc_offset'].toString();
      var hrs = offset.substring(1,3);
      var min = offset.substring(4);
      var now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(hrs),minutes: int.parse(min)));
      time = now;
    }catch(ex){
      print("No Internet Connection....");
      print(ex);
      time = "X";
      print("Time in WC-> $time");
    }

  }

}
