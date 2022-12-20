import 'package:bmi_cal/screen/constannts/constanstants.dart';
import 'package:bmi_cal/screen/mainpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: getApplicationTheam().copyWith(
      primaryColor: const Color(0Xff0A0E21 ),
      //  primaryColor: const Color(0Xff0A0E21 ),
       scaffoldBackgroundColor: Color(0xff0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
          ),
      // home:const MyHomePage(title: 'Flutter Demo Home Page'),
      home: MainPage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
