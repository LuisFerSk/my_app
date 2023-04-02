import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';
import 'package:my_app/presentation/pages/home/home_page.dart';
import 'package:my_app/di/injection_container.dart';

void app() {
  // Inicialización de las inyecciones de dependencias.
  InjectionContainer.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: ColorsTheme.background),
      home: const HomePage(),
    );
  }
}
