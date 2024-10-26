// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/widgets/buttom_screen2.dart';
import 'package:flutter/material.dart';

class Result_screen extends StatelessWidget {
  const Result_screen({
    super.key,
    required this.num_re,
  });

  final double num_re;

//method return result
  // getStatus() {
  //   if (num_re <= 18.4) {
  //     return TextSpan(
  //         text: "underweight",
  //         style: TextStyle(color: Colors.yellow, fontSize: 30));
  //   }
  //     else if (num_re >=18.5 && num_re <= 24.9) {
  //     return TextSpan(
  //         text: 'Normal',
  //         style: TextStyle(
  //           color: Colors.green,
  //           fontSize: 30,
  //         ));
  //   }
  //   else if (num_re >= 25.0 && num_re <= 39.9) {
  //     return TextSpan(
  //         text: 'Overweight',
  //         style: TextStyle(
  //           color: Colors.orange,
  //           fontSize: 30,
  //         ));
  //   }
  //   else if (num_re >= 25.0 && num_re <= 39.9) {
  //     return  TextSpan(
  //       text: 'Obese',
  //       style: TextStyle(color: Colors.red, fontSize: 30),
  //     );
  //   }
  // }

  //حل اخر

  // Color getStatusColor() {
  //   if (num_re <= 18.4) {
  //     return Colors.yellow; 
  //   } else if (num_re >= 18.4 && num_re <= 24.9) {
  //     return Colors.green;
  //   } else if (num_re >= 25.0 && num_re <= 39.9) {
  //     return Colors.red;
  //   } else if (num_re >= 40) {
  //     return Colors.red;
  //   }
  //   return Colors.white; 
  // }

  //  getStatus() {
  //   if (num_re <= 18.4) {
  //     return Text("underweight",style: TextStyle(color: Colors.yellow ),);
  //   } else if (num_re >= 18.4 && num_re <= 24.9) {
  //     return Text("Normal",style: TextStyle(color: Colors.green ),);
  //   } else if (num_re >= 25.0 && num_re <= 39.9) {
  //     return Text("Overweight",style: TextStyle(color: Colors.orange ),);
  //   } else if (num_re >= 40) {
  //     return Text("Obese",style: TextStyle(color: Colors.red ),);
  //   }
  // }

   getStatus() {
    if (num_re <= 18.4) {
      return "underweight";
    } else if (num_re >= 18.4 && num_re <= 24.9) {
      return "Normal";
    } else if (num_re >= 25.0 && num_re <= 39.9) {
      return "Overweight";
    } else if (num_re >= 40) {
      return "Obese";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a0c21),//0xff1d1e33
      appBar: AppBar(
        backgroundColor: Color(0xff0a0c21),
        foregroundColor: Colors.white,
        title: Text(
          "Your result",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
            
          ),
        ),
        
      ),
    
    
    
     body: Column(
      children: [
        Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xff1d1e33), //0xff1d1e33
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Expanded(
                      
                      child: Text(
                      
                        getStatus(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),

                    Expanded(
                      child: Text(
                        
                       num_re.toStringAsFixed(2),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),


                     Expanded(
                      child: Text(
                        
                      "this is the result",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),

                   

                    
                  ],
                  
                ),
              ),
            ),




             buttom_end_Widget(),

            
      ],
     ),

            
    
    
      
    );
  }
}
