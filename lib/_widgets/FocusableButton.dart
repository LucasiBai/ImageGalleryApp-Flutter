import 'package:flutter/material.dart';


class FocusableButton extends StatefulWidget {
  FocusableButton({
    Key? key,
    required Widget this.button,
    required this.onEnter
  }) : super(key: key);

  final Widget button;
  final Function() onEnter;

  @override
  State<FocusableButton> createState() => _FocusableButtonState();
}

class _FocusableButtonState extends State<FocusableButton> {


  bool _hasFocus = false;

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
        onFocusChange: (value) => setState(() => _hasFocus = value),
        actions: <Type, Action<Intent>>{
          ActivateIntent: CallbackAction<Intent>(onInvoke: (intent) {
            widget.onEnter();
            return null;
          }),
        },
        child: Stack(
            children: [
              widget.button,
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
        ));
  }
}
