import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepOrange,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
      ));
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b50);
}