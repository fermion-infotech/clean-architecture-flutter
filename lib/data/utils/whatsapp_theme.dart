import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WhatsAppTheme {
  static ThemeData themeData = ThemeData(
    primaryColor: const Color(0xFF075E54), // WhatsApp green
    hintColor: const Color(0xFF128C7E), // WhatsApp dark green
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xFFECE5DD), // WhatsApp chat background color
    appBarTheme: const AppBarTheme(
      color: Color(0xFF075E54), systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.black87),
      bodyText2: TextStyle(color: Colors.black54),
      headline6: TextStyle(color: Colors.white),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: const Color(0xFF075E54), // WhatsApp green
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
