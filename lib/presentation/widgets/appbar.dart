import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    backgroundColor: ColorsTheme.background,
    title: SizedBox(
      height: 90,
      child: Image.asset('assets/logo.png', fit: BoxFit.cover),
    ),
  );
}
