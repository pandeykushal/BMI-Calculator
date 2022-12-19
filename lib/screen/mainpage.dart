 import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constannts/constanstants.dart';
import 'widget/icon_content.dart';
import 'widget/reusable_card.dart';






enum Gender {
  male,
  female,
}


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
  
}

class _MainPageState extends State<MainPage> {
 Gender? selectedGender  ;

  Color maleCardColor =kInactivecardColor;
  Color FemaleCardColor=kInactivecardColor;

  int height =180;
  int Weight = 40 ;
  int Age =20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('BMI CALCULATOR'),
        
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ 
          Expanded(child: Row(
            children: [
              Expanded(
                child:  GestureDetector(
                  onTap: (){
                    setState(() {
                      
                      selectedGender = Gender.male;
                      
                      
                    });

                  },
                  child: ReusableCard(
                 
                  colour:selectedGender==Gender.male  ? kActiveCardColor  :kInactivecardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'Male',
                  ),
                              ),
                ) ,
      ),
              Expanded(
                child: 
             GestureDetector(
              onTap: (){
                setState(() {
                  selectedGender = Gender.female;
                 
                  
                });
              },
               child: ReusableCard(
                colour:selectedGender==Gender.female?kActiveCardColor:kInactivecardColor,
                cardChild:IconContent(icon: FontAwesomeIcons.venus,
                label: 'Female',
                ),
             
               ),
             ),
      ),
        ],
          ),
          ),
          Expanded(
            child:    
           
          ReusableCard(
            colour: kActiveCardColor,
           cardChild: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
          children: [   
            SizedBox(height: 10),  
            Text('HEIGHT',style:kLabelTextStyle ,),
               Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Padding( padding: EdgeInsets.only(bottom: 15,),),
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text('CM',style: kLabelTextStyle,),
                    ],
                  ),
                  SliderTheme(

                     data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xff8d8e98),
                      thumbColor:Color(0xffeb1555 ) ,
                      overlayColor: Color(0x29eb1555 ), 
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                     ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      // activeColor:Colors.white ,
                      // inactiveColor: Color(0xff8d8e98),
                     onChanged: (double newValue){
                      setState(() {
                         height=newValue.round();
                        
                      });
                      print(newValue);
                     
                  
                     }),
                  ),
              
            ],
           ),
           ),
      ),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
               colour: kActiveCardColor,
               cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Text('AGE',style: kLabelTextStyle,),
                  Text(Age.toString(),
                    style: kNumberStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: (){
                            print('Weight');
                            setState(() {
                              Age++;
                              
                            });
                              },
                       ),
                       SizedBox(
                        width: 25.0,
                       ),
                       RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: (){
                            print('Weight');
                            setState(() {
                              Age++;
                              
                            });
                              },
                       ),
                      ],
                    ),
                 ],
                 
               ),
               
              ),
              ),
              Expanded(child: ReusableCard(
                 colour:kActiveCardColor,
                 cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Weight',style: kLabelTextStyle,),
                    Text(Weight.toString(),
                    style: kNumberStyle,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: (){
                            print('Weight');
                            setState(() {
                              Weight++;
                              
                            });
                              

                          },
                        ),
                          SizedBox(
                            width: 25,
                          ),
                          RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                              Weight--;
                            });

                          },
                        ), 
                          
                          
                      ],
                    ),
                  ],
                 ),
              ),
              ),
            ],
          ),         
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,


          ),
        ],
      ), 
    );
  }
}
class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon ,
   required this.onPressed
   });
  final IconData icon ;
  final VoidCallback onPressed;
  

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
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