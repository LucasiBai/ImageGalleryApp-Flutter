import 'package:flutter/material.dart';

class ImgButton extends StatefulWidget {
  const ImgButton(
      {Key? key,
      this.isActive = false,
      Color this.color = Colors.redAccent,
      required this.onChange})
      : super(key: key);

  final bool isActive;
  final ValueChanged<bool> onChange;
  final Color color;

  @override
  State<ImgButton> createState() => _ImgButtonState();
}

class _ImgButtonState extends State<ImgButton> {
  bool _isVertical(BuildContext context) {
    return MediaQuery.of(context).size.width < 500;
  }

  bool _hasFocus = false;

  void _setValue() {
    widget.onChange(!widget.isActive);
  }


  @override
  Widget build(BuildContext context) {
    return _buttonLayout(context);
  }

  Widget _buttonLayout(BuildContext context) {
    return FocusableActionDetector(
      onFocusChange: (value) => setState(() => _hasFocus = value),
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<Intent>(onInvoke: (intent) {
          _setValue();
          return null;
        }),
      },
      child: Stack(
        children: [
          GestureDetector(
          onTap: _setValue,
          child: Container(
            padding: const EdgeInsets.all(5),
            width: 40,
            child: Icon(
              widget.isActive ? Icons.favorite : Icons.favorite_border,
              color: widget.color,
              size: _isVertical(context) ? 20 : 30,
            ),
          ),),
            if (_hasFocus)
              Positioned(
              left: -4,
              top: -4,
              bottom: -4,
              right: -4,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(4))
                ),
                
              ))
        ]
      ),
    );
  }
}
