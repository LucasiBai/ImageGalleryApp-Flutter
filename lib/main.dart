import 'package:flutter/material.dart';
import 'package:layout_practice/styles.dart';

import '_widgets/ImgList.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey)),
    darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blueGrey, brightness: Brightness.dark)),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image Gallery",
          style: TextStyles.imageName,
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: ImgList(),
    );
  }
}
