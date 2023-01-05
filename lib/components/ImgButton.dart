
import 'package:flutter/material.dart';

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
