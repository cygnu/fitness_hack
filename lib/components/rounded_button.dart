import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {required this.text, required this.colour, this.onPressed, Key? key})
      : super(key: key);
  final String text;
  final Color colour;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          height: 50.0,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
