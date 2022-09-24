import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  File a = File('../../.env');
  static String kIpAdress = 'https://';

  static String apiKeyForNews = dotenv.env['API_KEY']!;

  static Color kPrimaryColor = const Color(0xFF693EFF);

  static ThemeData ligthTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(0xFF693EFF, {
      50: Color.fromRGBO(105, 62, 255, .1),
      100: Color.fromRGBO(105, 62, 255, .2),
      200: Color.fromRGBO(105, 62, 255, .3),
      300: Color.fromRGBO(105, 62, 255, .4),
      400: Color.fromRGBO(105, 62, 255, .5),
      500: Color.fromRGBO(105, 62, 255, .6),
      600: Color.fromRGBO(105, 62, 255, .7),
      700: Color.fromRGBO(105, 62, 255, .8),
      800: Color.fromRGBO(105, 62, 255, .9),
      900: Color.fromRGBO(105, 62, 255, 1),
    }),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: const MaterialColor(0xFF693EFF, {
      50: Color.fromRGBO(105, 62, 255, .1),
      100: Color.fromRGBO(105, 62, 255, .2),
      200: Color.fromRGBO(105, 62, 255, .3),
      300: Color.fromRGBO(105, 62, 255, .4),
      400: Color.fromRGBO(105, 62, 255, .5),
      500: Color.fromRGBO(105, 62, 255, .6),
      600: Color.fromRGBO(105, 62, 255, .7),
      700: Color.fromRGBO(105, 62, 255, .8),
      800: Color.fromRGBO(105, 62, 255, .9),
      900: Color.fromRGBO(105, 62, 255, 1),
    }),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
    ),
  );
}
