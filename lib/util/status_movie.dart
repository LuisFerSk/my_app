import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';

//
// Enum es utilizado para clasificar los diferentes estados de las películas según la api,
//
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
  //
  // Función utilizada para obtener el color del estado de una película.
  //
  // status - estado de la película
  //
  static Color getStatusColor(String status) {
    if (StatusMovieEnum.rumored.value == status) {
      return ColorsTheme.rumored;
    }

    if (StatusMovieEnum.planned.value == status) {
      return ColorsTheme.planned;
    }

    if (StatusMovieEnum.inProduction.value == status) {
      return ColorsTheme.inProduction;
    }

    if (StatusMovieEnum.postProduction.value == status) {
      return ColorsTheme.postProduction;
    }

    if (StatusMovieEnum.released.value == status) {
      return ColorsTheme.released;
    }

    if (StatusMovieEnum.canceled.value == status) {
      return ColorsTheme.canceled;
    }

    return ColorsTheme.backgroundSecondary;
  }
}
