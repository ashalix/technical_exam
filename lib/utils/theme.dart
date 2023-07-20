import 'package:flutter/material.dart';

const categoryBackgroundColor = Color(0xffEBEAE8);
const discountTagColor = Color(0xffE0CA9E);

final lightTheme = ThemeData(
  primaryColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Color(0xFF000000),
  ),
  primaryTextTheme: textTheme,
  iconTheme: const IconThemeData(size: 28.0),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
    filled: true,
    fillColor: Colors.black12,
  ),
);

const TextStyle textStyleSmall = TextStyle(
  fontSize: 14.0,
);
const TextStyle textStyleMedium = TextStyle(
  fontSize: 15.0,
);
const TextStyle textStyleLarge = TextStyle(
  fontSize: 16.0,
);

const TextTheme textTheme = TextTheme(
  bodySmall: textStyleSmall,
  bodyMedium: textStyleMedium,
  bodyLarge: textStyleLarge,
);
