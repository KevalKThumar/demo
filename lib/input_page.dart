// ignore_for_file: constant_identifier_names

import 'bottomButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContant.dart';
import 'result.dart';
import 'reusable.dart';
import 'roundIconButton.dart';
import 'claculation.dart';

const BottomContainerHeight = 50.0;
const ActiveCardColor = Color.fromARGB(255, 52, 42, 42);
const inActiveCardColor = Color.fromARGB(255, 31, 31, 36);
const BottomContainerColor = Color.fromARGB(255, 158, 25, 25);

enum Gender {
  male,
  female,
  extra,
}

// ignore: camel_case_types
class BMI_calculator extends StatefulWidget {
  const BMI_calculator({super.key});

  @override
  State<BMI_calculator> createState() => BMI_calculatorState();
}

// ignore: camel_case_types
class BMI_calculatorState extends State<BMI_calculator> {
  Gender sgender = Gender.extra;
  int height = 180;
  int weight = 45;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      // floatingActionButton: ,
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                // ignore: prefer_const_constructors
                Expanded(
                  // ignore: prefer_const_constructors
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        sgender = Gender.male;
                      });
                    },
                    child: res(
                      colour: sgender == Gender.male
                          ? ActiveCardColor
                          : inActiveCardColor,
                      cardChild: const IconContant(
                        icon: FontAwesomeIcons.mars,
                        lable: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        sgender = Gender.female;
                      });
                    },
                    child: res(
                      colour: sgender == Gender.female
                          ? ActiveCardColor
                          : inActiveCardColor,
                      // ignore: prefer_const_constructors
                      cardChild: const IconContant(
                        icon: FontAwesomeIcons.venus,
                        lable: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Expanded(
            child: res(
                colour: inActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Text(
                      'HEIGHT',
                      style: const TextStyle(fontSize: 25.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: const TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 12.0,
                        ),
                        thumbColor: const Color.fromARGB(255, 158, 25, 25),
                        activeTrackColor: Colors.white,
                        trackHeight: 1.0,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                // ignore: prefer_const_constructors
                Expanded(
                  child: res(
                    colour: inActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          weight.toString(),
                          style: const TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            roundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            roundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // ignore: prefer_const_constructors
                Expanded(
                  child: res(
                    colour: inActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'AGE',
                          style: TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            roundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            roundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomButton(
            Buttontitle: 'CALCULATE',
            onpress: () {
              Calculation calc = Calculation(weight: weight, height: height);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => result(
                    bmiResult: calc.calculateBMI(),
                    interpretation: calc.getInterpretation(),
                    resultText: calc.getResult(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
