import 'package:english_words/english_words.dart';
import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
   final wordPair=WordPair.random();
    return MaterialApp(
      title: 'Welcome to flutter',
      home: Scaffold(
        appBar:AppBar(
          title:Text('Welcome to Flutter') ,
          backgroundColor:Colors.orangeAccent,
          ) ,
          body: Center(
            child: RandomWords(),
            ),
            backgroundColor: Colors.orangeAccent[100],
            ),
    );
  }
}

class RandomWordState extends State<RandomWords>{
  Widget build(BuildContext context){
    final wordPair=WordPair.random();
    return Text(wordPair.asPascalCase);
  }


}

class RandomWords extends StatefulWidget{
  RandomWordState createState()=>RandomWordState();
}