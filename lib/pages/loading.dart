import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

   void getData() async{

     Response response = await get('http://worldtimeapi.org/api/timezone/Europe/London');
     Map data = jsonDecode(response.body);
     String datetime = data['datetime'];
     String offset = data['utc_offset'].substring(1,3);
     //print(offset);
     DateTime now = DateTime.parse(datetime);
     now = now.add(Duration(hours: int.parse(offset)));
     print(now);
  }

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      print("api will call.................");
      getData();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading..."),
    );
  }
}