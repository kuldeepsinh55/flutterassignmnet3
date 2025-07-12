import 'package:fassignment/Q1-4/q1.dart';
import 'package:fassignment/Q1-4/q2.dart';
import 'package:fassignment/Q1-4/q3.dart';
import 'package:fassignment/Q1-4/q4.dart';
import 'package:fassignment/Q12-Q20/q12.dart';
import 'package:fassignment/Q12-Q20/q13.dart';
import 'package:fassignment/Q12-Q20/q14.dart';
import 'package:fassignment/Q12-Q20/q15.dart';
import 'package:fassignment/Q12-Q20/q16.dart';
import 'package:fassignment/Q12-Q20/q17.dart';
import 'package:fassignment/Q12-Q20/q18.dart';
import 'package:fassignment/Q12-Q20/q19.dart';
import 'package:fassignment/Q12-Q20/q20.dart';
import 'package:fassignment/Q21-28/q21.dart';
import 'package:fassignment/Q21-28/q22.dart';
import 'package:fassignment/Q21-28/q23.dart';
import 'package:fassignment/Q21-28/q24.dart';
import 'package:fassignment/Q21-28/q25.dart';
import 'package:fassignment/Q21-28/q26.dart';
import 'package:fassignment/Q21-28/q27.dart';
import 'package:fassignment/Q21-28/q28.dart';
import 'package:fassignment/Q5-11/q10.dart';
import 'package:fassignment/Q5-11/q11.dart';
import 'package:fassignment/Q5-11/q5.dart';
import 'package:fassignment/Q5-11/q6.dart';
import 'package:fassignment/Q5-11/q7.dart';
import 'package:fassignment/Q5-11/q8.dart';
import 'package:fassignment/Q5-11/q9.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListPage(),
    );
  }
}
