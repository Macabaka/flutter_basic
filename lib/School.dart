import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


//void main() => runApp(new MyApp());

//自定义组件(无状态)
class School extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Scaffold(
      appBar: AppBar(
        title: const Text("School"),
      ),
        body: new Center(
          child: new RandomWords(),
        ),
      );
  }
}

//自定义组件（有状态）
class RandomWords extends StatefulWidget{
  @override
  createState()=>new RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{

  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved = new Set<WordPair>();

  Widget _buildRow(WordPair pair){
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: (){
        setState(() {
          if(alreadySaved){
            _saved.remove(pair);
          }else{
            _saved.add(pair);
          }
        });
      },
    );
  }

  Widget _buildSuggestions(){
    return ListView.builder(
      padding: const EdgeInsets.all(26.0),
      itemBuilder: (context,i){
        if(i.isOdd) return Divider();
        final index =i~/2;
        if(index>=_suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }






  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
//    return new Text(wordPair.asPascalCase,style: TextStyle(fontSize: 35.0),);
  return Scaffold(
    body: _buildSuggestions(),
  );
  }


}