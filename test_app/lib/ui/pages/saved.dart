import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class SavedView extends StatelessWidget {
  SavedView(this.wordPair);
  Set<WordPair> wordPair;

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    final tiles = wordPair.map((pair) {
      return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      );
    });
    final divided = tiles.isNotEmpty
        ? ListTile.divideTiles(context: context, tiles: tiles).toList()
        : <Widget>[];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Suggestions'),
      ),
      body: ListView(
        children: divided,
      ),
    );
  }
}
