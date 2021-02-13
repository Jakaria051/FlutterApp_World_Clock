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

    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
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