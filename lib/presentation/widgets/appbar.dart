import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';

//
// Appbar general de toda la app.
//
AppBar appBar(BuildContext context) {
  return AppBar(
    backgroundColor: ColorsTheme.background,
    centerTitle: true,
    title: Center(
      child: Image.asset(
        'assets/logo.png',
        fit: BoxFit.cover,
        height: 80.0,
      ),
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(0.0),
      child: Container(),
    ),
  );
}
