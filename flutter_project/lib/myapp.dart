import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Welcome to flutter',
      home: Scaffold(
        appBar:AppBar(
          title:Text('Welcome to Flutter') ,
          backgroundColor:Colors.orangeAccent,
          ) ,
          body: Center(
            child:Text('My first app in Flutter') ,
            ),
            backgroundColor: Colors.orangeAccent[100],
            ),
    );
  }
}