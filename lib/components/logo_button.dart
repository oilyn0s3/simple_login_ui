import 'package:flutter/material.dart';

class LogoButton extends StatelessWidget {
  final void Function()? onPressed;
  final String imgPath;

  const LogoButton({
    super.key,
    required this.imgPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          style: BorderStyle.solid,
          color: Colors.grey,
          width: 2,
        ),
      )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          imgPath,
          width: 40,
        ),
      ),
    );
  }
}
