import 'package:flutter/material.dart';

final List imageList = [
  {
    "name": "Reno",
    "url":
        "https://images.pexels.com/photos/3062964/pexels-photo-3062964.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {
    "name": "Montañas",
    "url":
        "https://images.pexels.com/photos/1002722/pexels-photo-1002722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {
    "name": "Bosque",
    "url":
        "https://images.pexels.com/photos/2418667/pexels-photo-2418667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {
    "name": "Perrito",
    "url":
        "https://images.pexels.com/photos/3376610/pexels-photo-3376610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {
    "name": "Gatito",
    "url":
        "https://images.pexels.com/photos/3960037/pexels-photo-3960037.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
];

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImgList(),
    );
  }
}

class ImgList extends StatefulWidget {
  ImgList({Key? key}) : super(key: key);

  final List images = [...imageList, ...imageList, ...imageList];

  @override
  State<ImgList> createState() => _ImgListState();
}

class _ImgListState extends State<ImgList> {
  int _totalFavs = 0;

  void sumToTotal(bool state) {
    setState(() {
      _totalFavs = state ? _totalFavs + 1 : _totalFavs - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          color: Colors.white,
          margin: const EdgeInsets.fromLTRB(0, 4, 0, 4),
          child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: _getImages()),
        ),
        Container(
          color: Colors.black38,
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.all(10),
          child: Text(
            "Fav Count : $_totalFavs",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
          ),
        )
      ],
    );
  }

  List<ImgPreview> _getImages() {
    final List<ImgPreview> images = [];
    for (final image in widget.images) {
      images.add(
        ImgPreview(
          url: image["url"],
          title: image["name"],
          onFav: sumToTotal,
        ),
      );
    }
    return images;
  }
}

class ImgPreview extends StatefulWidget {
  const ImgPreview(
      {required this.url, required this.title, required this.onFav, super.key});

  final String url;
  final String title;
  final ValueChanged<bool> onFav;

  @override
  State<ImgPreview> createState() => _ImgPreviewState();
}

class _ImgPreviewState extends State<ImgPreview> {
  bool _isActive = false;

  void handleSetActive(bool state) {
    widget.onFav(state);
    setState(() {
      _isActive = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black12),
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Image.network(widget.url, fit: BoxFit.cover),
        ),
        Container(
          color: Colors.black45,
          width: double.infinity,
          height: 50,
          alignment: Alignment.centerRight,
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Text(
              widget.title,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          child: ImgButton(
            isActive: _isActive,
            onChange: handleSetActive,
          ),
        )
      ],
    );
  }
}

class ImgButton extends StatelessWidget {
  const ImgButton({Key? key, this.isActive = false, required this.onChange})
      : super(key: key);

  final bool isActive;
  final ValueChanged<bool> onChange;

  void setValue() {
    onChange(!isActive);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: setValue,
      child: Container(
        padding: const EdgeInsets.all(5),
        width: 40,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              isActive ? Icons.favorite : Icons.favorite_border,
              color: Colors.redAccent,
            ),
            FittedBox(
              child: Text(
                isActive ? "Fav" : "No Fav",
                style: const TextStyle(fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
