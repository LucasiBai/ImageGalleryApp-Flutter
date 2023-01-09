import 'package:flutter/material.dart';

import '_widgets/ImgList.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.blueGrey,
      backgroundColor: Colors.blueGrey[100],
    ),
    darkTheme: ThemeData(
      primaryColor: Colors.black87,
      backgroundColor: Colors.black12,
    ),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Gallery"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ImgList(),
    );
  }
}
