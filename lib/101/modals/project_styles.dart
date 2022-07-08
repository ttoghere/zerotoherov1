import 'package:flutter/material.dart';

class ProjectStyles {
  //Text widget içinde bulunacak olan verilerin extra özelleştirilmesini sağlar
  static const TextStyle firstStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 40,
    shadows: [
      Shadow(color: Colors.black, offset: Offset(0, 3), blurRadius: 20),
    ],
  );
}

class ProjectColors {
  static Color red800 = Colors.red[800]!;
}
