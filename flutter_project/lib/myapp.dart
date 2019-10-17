import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Welcome to Flutter',
      home:Scaffold(
        appBar:AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body:Center(
          child:Text('Hello Flutter User'),
          ),
        ),
    );
  }
}
