import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_time/service/world-time.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  void getTime(String location) async{

    var kol = WorldTime(location);
        await kol.getTime();
    print("---------------------");
    print("Kol.time -> ${kol.time}");
    Navigator.pushReplacementNamed(context, "/home",arguments: {
      'location' : location,
      'time' : kol.time
    });
  }


  @override
  Widget build(BuildContext context) {


    var location = "Asia/Kolkata";
    try{
      print("Try................");
      Map data = ModalRoute.of(context).settings.arguments;
      location = data['location'].toString().trim();
      print(location);

    }catch(e){
      print("Catch.............");
      print(e);
    }
    getTime(location);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text(
              "Loading...",
              style: TextStyle(
                fontSize: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
