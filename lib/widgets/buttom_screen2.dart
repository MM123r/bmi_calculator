// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/home_screen.dart';
import 'package:bmi_calculator/utils/colors.dart';
import 'package:flutter/material.dart';

class buttom_end_Widget extends StatelessWidget {
  const buttom_end_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
         width: double.infinity,
         height: 60,
         child: ElevatedButton(
             onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeScreen()));
             },
             style: ElevatedButton.styleFrom(
                 backgroundColor: AppColor.redColor,
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(5))),
             child: Text(
               "Thank you",
               style: TextStyle(
                 color: AppColor.whiteColor,
                 fontWeight: FontWeight.bold,
               ),
             )));
  }
}
