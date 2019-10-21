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
  final _suggestions=<WordPair>[];
  final _biggerFont=const TextStyle(fontSize:18.0);
  Widget _buildSuggestions(){
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context,i){
        if (i.isOdd) return Divider(color: Colors.red);
        final index=i~/2;
        if (index>=_suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));

        }
        return _buildRow(_suggestions[index]);

        
      }

    );
    
  }


}

class RandomWords extends StatefulWidget{
  RandomWordState createState()=>RandomWordState();
  Widget _buildRow(WordPair pair){
    title:Text(
      pair.asPascalCase,
      style: _biggerFont
    ),

  );
}
}