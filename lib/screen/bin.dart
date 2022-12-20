import 'package:bmi_cal/screen/constannts/constanstants.dart';
import 'package:bmi_cal/screen/widget/button.dart';
import 'package:bmi_cal/screen/widget/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
               padding: EdgeInsets.all(20),
               alignment: Alignment.bottomLeft,
              child: Text('Your Result',style:kTitleTextStyle ,),
            ),
          
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("normal",style: kResultText,),
                  Text('20.3',style: kBMITextstyle,),
                  Text('Your BMI result is Quite low,you should eat normal !',style: kBMIBodyTextstyle,),

              ]),
            ),
          
          ),
          ButtomButton(
            buttomTitle: 'RE-CALCULATE',
            onTap: () {
        Navigator.pop(context); 
      },
          ),
          
      ]
      
      ),
      
    );
  }
}