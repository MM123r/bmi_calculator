// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:bmi_calculator/widgets/buttom_screen1.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 20;
  int weight = 75;
  int heigh = 160;
  bool ismale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a0c21),

      //appbar title
      appBar: AppBar(
        backgroundColor: Color(0xff1d1e33),

        //titel
        title: Center(
          child: Text(
            "Bmi Calculate",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //sec1
            Expanded(
              //part 1 weight
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              (ismale) ? Color(0xffeb1555) : Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 60,
                                color: Colors.white,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  //part 2 button age
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              (ismale) ? Color(0xff1d1e33) : Color(0xffeb1555),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 60,
                                color: Colors.white,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //sec2
            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xff1d1e33), //0xff1d1e33
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "heigh",
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            heigh.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: heigh.toDouble(),
                        max: 220,
                        min: 120,
                        activeColor: Color(0xffeb1555),
                        inactiveColor: Color(0xff525365),
                        onChanged: (value) {
                          setState(() {
                            heigh = value.toInt();
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),

            //sec3
            Expanded(
              //part 1 weight
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "weight",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //Button weight remove
                                  IconButton.filled(
                                      style: IconButton.styleFrom(
                                          backgroundColor: Color(0xff4b4e5d)),
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      icon: Icon(Icons.remove)),
                                  SizedBox(
                                    width: 10,
                                  ),

                                  //Button weight add
                                  IconButton.filled(
                                      style: IconButton.styleFrom(
                                          backgroundColor: Color(0xff4b4e5d)),
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      icon: Icon(Icons.add)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  //part 2 button age
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "age",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // button age remov
                                  IconButton.filled(
                                      style: IconButton.styleFrom(
                                          backgroundColor: Color(0xff4b4e5d)),
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      icon: Icon(Icons.remove)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  IconButton.filled(
                                      style: IconButton.styleFrom(
                                          backgroundColor: Color(0xff4b4e5d)),
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      icon: Icon(Icons.add)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //buttom
            buttom_sent_Widget(heigh: heigh, weight: weight),
          ],
        ),
      ),
    );
  }
}
