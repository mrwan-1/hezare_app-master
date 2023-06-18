import 'package:flutter/material.dart';
import '../util/RImport.dart';

class AppTheme {
  final enabledBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
          color: R.colors.border, width: 1.wdp, style: BorderStyle.solid));

  final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
          color: R.colors.error, width: 1.wdp, style: BorderStyle.solid));

  final lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        iconTheme:
            const IconThemeData().copyWith(size: 20.sp, color: Colors.white),
        centerTitle: true,
      ),
      colorScheme: const ColorScheme.light().copyWith(
        primary: R.colors.primary,
        secondary: R.colors.font,
      ),
      primaryColor: R.colors.primary,
      buttonTheme: ButtonThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          primary: R.colors.primary,
        ),
      ),
      textTheme: const TextTheme(
        headline4: TextStyle(fontFamily: "Almarai"),
        headline5: TextStyle(fontFamily: "Almarai"),
        headline6: TextStyle(fontFamily: "Almarai", fontSize: 19),
      ));
}
