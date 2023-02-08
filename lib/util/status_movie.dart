import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';

class StatusMovie {
  static Color getStatus(String expression) {
    switch (expression) {
      case 'Rumored':
        return ColorsTheme.rumored;
      case 'Planned':
        return ColorsTheme.planned;
      case 'In Production':
        return ColorsTheme.inProduction;
      case 'Post Production':
        return ColorsTheme.postProduction;
      case 'Released':
        return ColorsTheme.released;
      case 'Canceled':
        return ColorsTheme.canceled;
      default:
        return ColorsTheme.backgroundSecondary;
    }
  }
}
