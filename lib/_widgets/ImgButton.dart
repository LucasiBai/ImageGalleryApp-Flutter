import 'package:flutter/material.dart';

class ImgButton extends StatelessWidget {
  const ImgButton({Key? key,
    this.isActive = false,
    Color this.color = Colors.redAccent,
    required this.onChange})
      : super(key: key);

  final bool isActive;
  final ValueChanged<bool> onChange;
  final Color color;

  bool _isVertical(BuildContext context) {
    return MediaQuery
        .of(context)
        .size
        .width < 500;
  }

  void _setValue() {
    onChange(!isActive);
  }


  @override
  Widget build(BuildContext context) {
    return _buttonLayout(context);
  }

  Widget _buttonLayout(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: _setValue,
          child: Container(
            padding: const EdgeInsets.all(5),
            width: 40,
            child: Icon(
              isActive ? Icons.favorite : Icons.favorite_border,
              color: color,
              size: _isVertical(context) ? 20 : 30,
            ),
          )),
    );
  }
}
