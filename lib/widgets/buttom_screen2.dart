// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
             onPressed: () {},
             style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xffeb1555),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(5))),
             child: Text(
               "Thank you",
               style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
               ),
             )));
  }
}
