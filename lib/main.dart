import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height:16.0,),
            MyTextWidget(text: 'text 1'),
            SizedBox(height:16.0,),
            MyTextWidget(text: 'text 2'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MyTextWidget(text: 'text 3'),
                MyTextWidget(text: 'text 4'),
                MyTextWidget(text:'text 5')
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class MyTextWidget extends StatelessWidget {
  final String text;

  const MyTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}