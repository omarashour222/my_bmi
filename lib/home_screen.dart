import 'package:flutter/material.dart';
import 'package:my_bmi/bmi_brain.dart';
import 'package:my_bmi/main.dart';
import 'package:my_bmi/result_screen.dart';

const activeColor = Colors.lightBlue;
const inActiveColor = Colors.white;

enum Gender { male, female }

void main() {
  runApp(MyBmi());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 20;
  int weight = 70;
  double height = 180;
  Color maleColor = inActiveColor;
  Color femaleColor = inActiveColor;

  void updateColor(Gender gender) {
    setState(() {
      if (gender == Gender.male) {
        if (maleColor == inActiveColor) {
          maleColor = activeColor;
          femaleColor = inActiveColor;
        } else {
          maleColor = inActiveColor;
        }
      }
      if (gender == Gender.female) {
        if (femaleColor == inActiveColor) {
          femaleColor = activeColor;
          maleColor = inActiveColor;
        } else {
          femaleColor = inActiveColor;
        }
      }
    });
  }

  void count() {
    if (age == 1 || age < 0) {
      return;
    } else {
      age--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF5F3FF),
      appBar: AppBar(
        backgroundColor: Color(0XFFF5F3FF),
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Age",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "$age",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6D63FF),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FilledButton(
                            onPressed: () {
                              setState(() {
                                count();
                              });
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: Color(0xff091754),
                              shape: CircleBorder(),
                            ),
                            child: Text(
                              "-",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                          FilledButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: Color(0xff091754),
                              shape: CircleBorder(),
                            ),
                            child: Text(
                              "+",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Weight (KG)",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "$weight",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6D63FF),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FilledButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: Color(0xff091754),
                              shape: CircleBorder(),
                            ),
                            child: Text(
                              "-",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                          FilledButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: Color(0xff091754),
                              shape: CircleBorder(),
                            ),
                            child: Text(
                              "+",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0XFFFFFFFF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Height (CM)",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${height.toInt()}",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6D63FF),
                  ),
                ),
                Slider(
                    value: height,
                    min: 50,
                    max: 300,
                    thumbColor: Color(0xff6D63FF),
                    activeColor: Color(0xffCCCCCC),
                    inactiveColor: Color(0xffCCCCCC),
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue;
                      });
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("50 cm"),
                    Text(
                      "300 cm",
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: maleColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.male,
                            size: 80,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: femaleColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.female,
                            size: 80,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              BmiBrain bmi = BmiBrain(weight: weight, height: height);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return resultScreen(
                      titleText: bmi.getTitleText(),
                      bmiResult: bmi.calculateBmi(),
                      descriptionText: bmi.getDescriptionText(),
                    );
                  },
                ),
              );
            },
            child: Container(
              height: 70,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0Xff6C63FE),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                  child: Text(
                "CALCULATE YOUR BMI",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
