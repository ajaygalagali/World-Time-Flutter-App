import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();


}

class _HomePageState extends State<HomePage> {
  var time;
  var date;
  var location;
  var data ;
  DateTime now;

  void updateTime() async{
    try{
      while(1 != null){

        await Future.delayed(Duration(seconds: 1),(){
          setState(() {
            now = now.add(Duration(seconds: 1));
            print(now);
            // print(time);
          });
        });

      }
    }catch(ex){
      print(ex);
    }

  }

  @override
  void initState() {
    print("In Homepage Widget");


      print("initState");
      updateTime();


    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    print("In Homepage Widget tree");
    data = ModalRoute.of(context).settings.arguments;
    print("after data -> ${data['time']}");
    location = data['location'];
    if(now == null && data['time']!='X'){
      print("1 if Home");
      now = data['time'];
    }
    if(data['time']!='X'){
      print("2 if Home");

      time = "${now.hour} : ${now.minute}: ${now.second}";
      date = "${now.day}/${now.month}/${now.year}";
    }else{
      print("1 else Home");

      time = data['time'];
      date = "Something is wrong!";
    }

    print("Time in Home -> $time");

    return Scaffold(
      appBar: AppBar(
        title: Text("World Time"),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 32,),
              FlatButton.icon(
                padding: EdgeInsets.all(32),

                onPressed: (){
                  Navigator.pushReplacementNamed(context, "/arealist");
                },
                icon: Icon(Icons.location_pin),
                label: Text("Select Location"),
              ),
              SizedBox(height: 50,),
              Text(
                location,
                style:TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(height: 20,),
              Text(
                time,
                style: TextStyle(
                    fontSize: 54,
                    fontStyle: FontStyle.italic
                ),
              ),
              Text(
                date,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(height: 20,),


            ],
          ),
        ),
      ),
    );
  }
}
