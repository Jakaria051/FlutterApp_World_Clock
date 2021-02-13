import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int count = 0;

  void getData() async{
    //simulate network system for an username
    String username = await Future.delayed(Duration(seconds: 3),(){
      return 'Jakaria';
    }); 

    String bio = await Future.delayed(Duration(seconds: 2),(){
      return "Software engineer";
    });

    print('$username - $bio');
  }

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      getData();
      print("this one is not wait for getData method");
    }

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