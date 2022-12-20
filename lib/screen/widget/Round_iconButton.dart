import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon ,
   required this.onPressed
   });
  final IconData icon ;
  final VoidCallback onPressed;
  

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: Colors.white,),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints:BoxConstraints.tightFor(      
        height: 56,
        width: 56,
      )  ,

      onPressed: 
       onPressed
      
    );
  }
}