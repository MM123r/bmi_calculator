// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';

class buttom_sent_Widget extends StatelessWidget {
  const buttom_sent_Widget({
    super.key,
    required this.heigh,
    required this.weight,
  });

  final int heigh;
  final int weight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
            onPressed: () {
              double heigthInMater = heigh / 100;
              double result = weight / (heigthInMater * heigthInMater);
             
    
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Result_screen(num_re: result)));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffeb1555),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            child: Text(
              "continue",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )));
  }
}
