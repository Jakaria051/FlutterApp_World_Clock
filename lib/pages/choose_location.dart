import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int count = 0;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.redAccent,
       appBar: AppBar(
         backgroundColor: Colors.red[900],
         title: Text("Choose Location"),
         centerTitle: true,
         elevation: 0,
         ),
         body: RaisedButton(
           onPressed: (){
             setState(() {
             count += 1;               
            });
           },
           child: Text("Pressed $count times"),
         ),
    );
  }
}