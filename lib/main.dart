import 'package:computer_and_control_system/layout/study/Circuits/Circuits.dart';
import 'package:computer_and_control_system/layout/study/Circuits/Lecture.dart';
import 'package:computer_and_control_system/layout/study/Circuits/Section.dart';
import 'package:computer_and_control_system/layout/study/Circuits/Test.dart';
import 'package:computer_and_control_system/layout/study/Control%202/Control%202.dart';
import 'package:computer_and_control_system/layout/study/Control%202/Lecture2.dart';
import 'package:computer_and_control_system/layout/study/Control%202/Section2.dart';
import 'package:computer_and_control_system/layout/study/Data%20Structure/Data_Structure.dart';
import 'package:computer_and_control_system/layout/study/Data%20Structure/Lecture3.dart';
import 'package:computer_and_control_system/layout/study/Data%20Structure/Section3.dart';
import 'package:computer_and_control_system/layout/study/Logic%20Circuits/Lecture4.dart';
import 'package:computer_and_control_system/layout/study/Logic%20Circuits/Logic_Circuits.dart';
import 'package:computer_and_control_system/layout/study/Logic%20Circuits/Section4.dart';
import 'package:computer_and_control_system/layout/study/Maths%205/Lecture5.dart';
import 'package:computer_and_control_system/layout/study/Maths%205/Math5.dart';
import 'package:computer_and_control_system/layout/study/Maths%205/Section5.dart';
import 'package:computer_and_control_system/layout/study/Presentation%20Skills/Lecture6.dart';
import 'package:computer_and_control_system/layout/study/Presentation%20Skills/Presentation%20Skills.dart';
import 'package:computer_and_control_system/layout/study/Presentation%20Skills/Section6.dart';
import 'package:computer_and_control_system/layout/study/Type_Stady.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Shered/Styles/my_theme.dart';
import 'layout/Home_Screen.dart';
import 'layout/layout.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MainScreen.routName:(c)=>MainScreen(),
        HomeScreen.routName:(n)=>HomeScreen(),
        TypeStudy.routName:(v)=>TypeStudy(),
        Circuits.routName:(q)=>Circuits(),
        DataStructure.routName:(w)=>DataStructure(),
        LogicCircuits.routName:(e)=>LogicCircuits(),
        Math5.routName:(r)=>Math5(),
        PresentationSkills.routName:(t)=>PresentationSkills(),
        Lecture1.routName:(y)=>Lecture1(),
        Lecture2.routName:(u)=>Lecture2(),
        Lecture3.routName:(i)=>Lecture3(),
        Lecture4.routName:(o)=>Lecture4(),
        Lecture5.routName:(p)=>Lecture5(),
        Lecture6.routName:(a)=>Lecture6(),
        Section1.routName:(s)=>Section1(),
        Section2.routName:(d)=>Section2(),
        Section3.routName:(f)=>Section3(),
        Section4.routName:(g)=>Section4(),
        Section5.routName:(h)=>Section5(),
        Section6.routName:(j)=>Section6(),
        Control.routName:(k)=>Control(),
        Test.routName:(g)=>Test(),


      },
      initialRoute:MainScreen.routName ,
      themeMode: ThemeMode.dark,
      darkTheme: MyThemeData.DarkTheme,
      theme:MyThemeData.lightTheme ,
    );
  }
}


