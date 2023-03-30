import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';

enum StatusMovieEnum {
  rumored('Rumored'),
  inProduction('In Production'),
  planned('Planned'),
  postProduction('Post Production'),
  released('Released'),
  canceled('Canceled');

  final String value;

  const StatusMovieEnum(this.value);
}

class StatusMovie {
  static Color getStatusColor(String expression) {
    if (StatusMovieEnum.rumored.value == expression) {
      return ColorsTheme.rumored;
    }

    if (StatusMovieEnum.planned.value == expression) {
      return ColorsTheme.planned;
    }

    if (StatusMovieEnum.inProduction.value == expression) {
      return ColorsTheme.inProduction;
    }

    if (StatusMovieEnum.postProduction.value == expression) {
      return ColorsTheme.postProduction;
    }

    if (StatusMovieEnum.released.value == expression) {
      return ColorsTheme.released;
    }

    if (StatusMovieEnum.canceled.value == expression) {
      return ColorsTheme.canceled;
    }

    return ColorsTheme.backgroundSecondary;
  }
}
