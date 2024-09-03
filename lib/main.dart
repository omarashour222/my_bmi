import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_bmi/home_screen.dart';

class MyBmi extends StatefulWidget {
  MyBmi({super.key});

  @override
  State<MyBmi> createState() => _MyBmiState();
}

class _MyBmiState extends State<MyBmi> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0XFFF5F3FF),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0XFFF5F3FF),
          ),
        
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
