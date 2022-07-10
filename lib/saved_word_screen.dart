// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SavedWordScreen extends StatelessWidget {
  var savedWords = [];

  // ignore: use_key_in_widget_constructors
  SavedWordScreen({required this.savedWords});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Saved Word'),
        ),
        body: Center(
            child: Text(savedWords.join(" - "),
                style: const TextStyle(fontSize: 40))));
  }
}
