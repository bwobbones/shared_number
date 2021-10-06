// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Numbers',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shared Numbers'),
        ),
        body: Container(
          height: 250.0,
          color: Colors.blue[50],
          child: Align(
            alignment: FractionalOffset(0.5, 0.5),
            child: RandomWords(),
          ),
        )
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase, style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 4.0),);
  }
}