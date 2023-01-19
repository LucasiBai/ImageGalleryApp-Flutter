import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:layout_practice/services/dataService.dart';


import './ImgPreview.dart';



class ImgList extends StatefulWidget {
  ImgList({Key? key}) : super(key: key);

  List images = [];

  @override
  State<ImgList> createState() => _ImgListState();
}

class _ImgListState extends State<ImgList> {
  int _totalFavs = 0;
  int _rowLimit = 2;

  void getImages() async {
    final data = await getData();

    setState(() {
      widget.images = data;
    });
  }

  void sumToTotal(bool state) {
    setState(() {
      _totalFavs = state ? _totalFavs + 1 : _totalFavs - 1;
    });
  }

  void updateRowLimit(num scale) {
    setState(() {
      if (_rowLimit / scale < 5 && _rowLimit / scale > 1) {
        _rowLimit = (_rowLimit / (scale)).round();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          getImages();
      if (constraints.maxWidth < 500) {
        _rowLimit = 2;
        return Stack(
          alignment: Alignment.topRight,
          children: [
            GestureDetector(
              onScaleUpdate: (details) {
                updateRowLimit(details.scale / 2.5);
              },
              child: Container(
                color: Theme.of(context).colorScheme.background,
                margin: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                child: GridView.count(
                    crossAxisCount: _rowLimit,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    children: _getImages()),
              ),
            ),
            Container(
              color: Colors.black38,
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(10),
              child: Text(
                "Fav Count : $_totalFavs",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
            )
          ],
        );
      }
      _rowLimit = 3;
      return Stack(
        alignment: Alignment.topRight,
        children: [
          GestureDetector(
            onScaleUpdate: (details) {
              updateRowLimit(details.scale / 2.5);
            },
            child: Container(
              color: Theme.of(context).colorScheme.background,
              margin: const EdgeInsets.fromLTRB(0, 4, 0, 4),
              child: GridView.count(
                  crossAxisCount: _rowLimit,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: _getImages()),
            ),
          ),
          Container(
            color: Colors.black38,
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(10),
            child: Text(
              "Fav Count : $_totalFavs",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
          )
        ],
      );
    });
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
