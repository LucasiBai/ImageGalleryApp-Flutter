import 'package:flutter/material.dart';

import 'package:layout_practice/_widgets/FocusableButton.dart';
import '../_widgets/ImgButton.dart';

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
        Tooltip(
          message: widget.title,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black12),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: Image.network(widget.url, fit: BoxFit.cover),
          ),
        ),
        Container(
          color: Colors.black45,
          width: double.infinity,
          height: 50,
          alignment: Alignment.centerRight,
          child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Text(
                  widget.title,
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                ),
              )),
        ),
        Container(
          alignment: Alignment.topRight,
          child: FocusableButton(
            button: ImgButton(
              isActive: _isActive,
              onChange: handleSetActive,
            ),
            onEnter: () {
              handleSetActive(!_isActive);
            },
          ),
        )
      ],
    );
  }
}
