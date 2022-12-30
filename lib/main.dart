import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home:MyApp() ,
    )
  );
}

class SegundaApp extends StatelessWidget {
  const SegundaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Card(
            elevation: 20,
              shadowColor: Colors.black12,
              child:Column(
                children: [
                  ListTile(
                    title: Text("Holis"),leading: Icon(Icons.access_time, color: Colors.blue
                  ),subtitle: Text("Goos bye"),
                  ),
                  ListTile(
                    title: Text("Holis"),leading: Icon(Icons.access_time, color: Colors.blue,),
                  ),
                  Divider(height:5,indent: 20,endIndent: 20, color: Colors.black12,),
                  ListTile(
                    title: Text("Holis"),leading: Icon(Icons.access_time ,color: Colors.blue,),
                  ),
                  ListTile(
                    title: Text("Holis"),leading: Icon(Icons.access_time ,color: Colors.blue,),
                  ),
                ],
              )

          ),
        ],
      )
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: ImgList(),
    )
    ;

  }
}

class ImgList extends StatelessWidget {
  const ImgList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          Center(
            child: OverflowBox(

                maxWidth: 150,
                minWidth: 150,

              child: Container(
                height: double.infinity,
                color: Colors.green[200],

                child: FittedBox(
                  child: Container(
                    height: 100,
                    child: Text(""),
                    color: Colors.blue[200],
                  )
                )
              )
            ),
          ),
          ImgPreview(url:"https://images.pexels.com/photos/3062964/pexels-photo-3062964.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ImgPreview(url:"https://images.pexels.com/photos/1002722/pexels-photo-1002722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ImgPreview(url:"https://images.pexels.com/photos/2418667/pexels-photo-2418667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ImgPreview(url:"https://images.pexels.com/photos/3376610/pexels-photo-3376610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          Image.network("https://images.pexels.com/photos/3960037/pexels-photo-3960037.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/1002722/pexels-photo-1002722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/2418667/pexels-photo-2418667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/3376610/pexels-photo-3376610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/3960037/pexels-photo-3960037.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/1002722/pexels-photo-1002722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/2418667/pexels-photo-2418667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/3376610/pexels-photo-3376610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/3960037/pexels-photo-3960037.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/1002722/pexels-photo-1002722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/2418667/pexels-photo-2418667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/3376610/pexels-photo-3376610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/3960037/pexels-photo-3960037.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/1002722/pexels-photo-1002722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/2418667/pexels-photo-2418667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/3376610/pexels-photo-3376610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/3960037/pexels-photo-3960037.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/1002722/pexels-photo-1002722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/2418667/pexels-photo-2418667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),
          Image.network("https://images.pexels.com/photos/3376610/pexels-photo-3376610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover),

        ],),
    );
  }
}

class ImgPreview extends StatelessWidget {
  const ImgPreview({required this.url, super.key});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          child:     Image.network(url, fit: BoxFit.cover),
          height : double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(5))

          ),
        ),
        Container(
          color: Colors.black45,
          width: double.infinity,
          height: 50,
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Text("Holi", style: TextStyle(color: Colors.white, fontSize: 30),),
          ),
        )
      ],
    );
  }
}
