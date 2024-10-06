import 'package:flutter/material.dart';
import 'package:nasa_space_app2/constants.dart';

class DefaultButtonClimate extends StatelessWidget {
  const DefaultButtonClimate({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 4, 83, 173),
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      onPressed: press,
      child: Text(text),
    );
  }
}