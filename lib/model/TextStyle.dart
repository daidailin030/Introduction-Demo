import 'package:flutter/material.dart';

Text TitleSetting(String name) {
  return Text(
    name,
    style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

TextStyle SubtitleTextStyle() {
  return const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1);
}

TextStyle contentTextStyle() {
  return const TextStyle(fontSize: 18, height: 1.5, letterSpacing: 1);
}
