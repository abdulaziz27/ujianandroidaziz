import 'package:flutter/material.dart';
import 'AlQuran.dart';

void main() {
  runApp(MaterialApp (
    title: "Al-Quran",
    home: MainAlQuran(),
  ));
}

class MainAlQuran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Al-Quran",
      home: AlQuran(),
    );
  }
}