
import 'package:flutter/material.dart';
import 'package:islam/home/quran/sura_details.dart';
import 'package:islam/home_screen.dart';

import 'my_theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.LightTheme,
      darkTheme: MyTheme.darkTheme,
      routes: {
        HomeScreen.routName:(context)=>HomeScreen(),
        SuraDetails.routName:(context)=>SuraDetails(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
