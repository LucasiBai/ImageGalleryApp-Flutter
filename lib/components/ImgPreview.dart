
import 'package:flutter/material.dart';

import 'ImgButton.dart';

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
              child: FittedBox(
                child: Text(
                  widget.title,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              )),
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