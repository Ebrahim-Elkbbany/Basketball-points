import 'package:basketball_points/constant.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar() {
  return AppBar(
    centerTitle: true,
    toolbarHeight: 65,
    title: const Text(
      'Basketball Counter',
      style: TextStyle(fontSize: 22, color: textPrimaryColor),
    ),
    backgroundColor: Colors.orange,
  );
}