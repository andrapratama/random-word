import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'saved_word_screen.dart';

class RandomWord extends StatefulWidget {
  const RandomWord({Key? key}) : super(key: key);
  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  var savedWords = [];
  String randomWord = WordPair.random().asString;

  void _changeWord() {
    setState(() {
      randomWord = WordPair.random().asString;
    });
  }

  void _saveWord() {
    savedWords.add(randomWord);

    //halaman baru
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SavedWordScreen(savedWords: savedWords)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Flutter Pertama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(randomWord, style: const TextStyle(fontSize: 40)),
            IconButton(
                onPressed: _saveWord, icon: const Icon(Icons.favorite_border))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeWord,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
