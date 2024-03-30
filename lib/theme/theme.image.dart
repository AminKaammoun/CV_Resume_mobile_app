import 'package:flutter/material.dart';

class ThemeDependentImage extends StatelessWidget {
  final String lightImagePath;
  final String darkImagePath;

  const ThemeDependentImage({
      required this.lightImagePath,
      required this.darkImagePath,
      Key? key,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      final Brightness brightness = Theme.of(context).brightness;
      final String imagePath = brightness == Brightness.light ? lightImagePath : darkImagePath;

      return Image.asset(
        imagePath,
        width: 30,
      height: 30,
      // Add more properties to customize the image display as needed
    );
  }
}