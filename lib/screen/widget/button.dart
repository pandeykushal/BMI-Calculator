import 'package:flutter/material.dart';

import '../constannts/constanstants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({required this.onTap,required this.buttomTitle});
  final VoidCallback onTap ;
  final String? buttomTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child: Center(
          child: Text(buttomTitle !,style: kLargeText,)),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
    
    
      ),
    );
  }
}