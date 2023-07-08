import 'package:flutter/material.dart';

class MyTheme{
  static Color  lightprimary =  Color(0xffB7935F);
  static Color  colorblack =  Color(0xff242424);
  static Color  colorwhight =  Color(0xffFFFFFF);

  static ThemeData LightTheme = ThemeData(
    primaryColor: lightprimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: colorblack,
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor:colorblack,
      unselectedItemColor: colorwhight,
      showSelectedLabels: true,
    ),
    textTheme: TextTheme(

      headline1: TextStyle(
        color: colorblack,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
        headline2: TextStyle(
        color: colorblack,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
      subtitle1: TextStyle(
        color: colorblack,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
static ThemeData darkTheme = ThemeData();

}