import 'package:flutter/material.dart';

Widget betweenNonRelated() {
  return const SizedBox(
    height: 10,
  );
}

Widget betweenRelated() {
  return const SizedBox(
    height: 6,
  );
}

BoxDecoration portfolioSetting() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color: Colors.blueGrey, width: 10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.shade500.withOpacity(0.4),
        spreadRadius: 3,
        blurRadius: 1,
        offset: Offset(2, 4), // changes position of shadow
      ),
    ],
  );
}
