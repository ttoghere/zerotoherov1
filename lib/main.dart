import 'package:flutter/material.dart';
import 'package:zerotoherov1/101/scaffold_learn.dart';
import 'package:zerotoherov1/101/text_learn_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SecondLearn(),
    );
  }
}
