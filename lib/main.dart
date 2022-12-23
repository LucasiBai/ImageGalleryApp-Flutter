import 'package:flutter/material.dart';

void main(){
  runApp(
   const MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainBody(),
    );
  }
}

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        children: const[
          Expanded(child: RecipeData(), flex: 6),
          Expanded(child:ImgContainer(), flex: 10)

        ],
      ),
    );
  }
}

class RecipeData extends StatelessWidget {
  const RecipeData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const[
          Text("Strawberry Pavlova"),
          Text("Pavlova is a meringue-based desser named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.")
        ],
      ),
    );
  }
}

class ImgContainer extends StatelessWidget {
  const ImgContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network("https://cdn.pixabay.com/photo/2016/06/20/23/50/mixed-berries-1470228_960_720.jpg",fit: BoxFit.cover,)
      ,
    );

  }
}


