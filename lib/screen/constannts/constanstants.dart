import 'package:flutter/material.dart';



const kBottomContainerHeight =80.0;
const kActiveCardColor =Color(0xff1d1e33);
const kInactivecardColor=Color(0xff111328); 
const kBottomContainerColor=Color(0xFFeb1555);

const  kLargeText= TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold ,
            color: Colors.white, 
);

const  kLabelTextStyle= TextStyle(
            fontSize: 18.0,
            color: Color(0xff8d8e98),);
const kNumberStyle=TextStyle(
            fontSize: 50.0,
            fontWeight:FontWeight.w900,
             color: Colors.white,
             );

const  kTitleTextStyle= TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
            );
const  kResultText= TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Color(0xff24D876), );

const  kBMITextstyle= TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Colors.white );
const  kBMIBodyTextstyle= TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white );  


ThemeData getApplicationTheam(){
  return ThemeData(
    appBarTheme: const AppBarTheme(
      color: Color(0Xff0A0E21),
      elevation: 0,
      centerTitle: false,
    ),

  );

}