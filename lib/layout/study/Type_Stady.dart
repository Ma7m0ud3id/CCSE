

import 'package:computer_and_control_system/layout/study/Circuits/Circuits.dart';
import 'package:computer_and_control_system/layout/study/Control%202/Control%202.dart';
import 'package:computer_and_control_system/layout/study/Data%20Structure/Data_Structure.dart';
import 'package:computer_and_control_system/layout/study/Logic%20Circuits/Logic_Circuits.dart';
import 'package:computer_and_control_system/layout/study/Maths%205/Math5.dart';
import 'package:computer_and_control_system/layout/study/Presentation%20Skills/Presentation%20Skills.dart';
import 'package:flutter/material.dart';

class TypeStudy extends StatelessWidget {
static const String routName ='knkjnjk';
String circuits='Circuits';
String control='Control 2';
String dataStructure='Data Structure';

String logicCircuits='Logic Circuits';
String maths ='Maths 5';
String presentationSkills='Presentation Skills';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CCSE 2025',style: TextStyle(fontSize: 25,
          color: Color(0xF9000000),
          //Color(0xFF5D9CEC),
          fontWeight: FontWeight.w400,)),
      ),
      body:Column(
        children: [

          SizedBox(
            height: 40,
          ),
          Center(child: Text('Pick your category of Study',style: TextStyle(fontSize: 25,
            color: Color(0xFF003E90),
            //Color(0xFF5D9CEC),
            fontWeight: FontWeight.w400,))),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 44,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, Circuits.routName,arguments: circuits);

                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFFC91C22),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topLeft: Radius.circular(25),topRight: Radius.circular(25)) ,
                  ),
                  child: Column(
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(60), // Image radius
                          child: Image.asset('assets/images/CCSE.jpeg', fit: BoxFit.cover),
                        ),
                      ),
                     // Image.asset('assets/images/CCSE.jpeg',height: 120,width: 130),
                      Text('Circuits',style: Theme.of(context).textTheme.bodyText1,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context,Control.routName,arguments: control );

                },
                child: Container(

                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFF003E90),
                    borderRadius:  BorderRadius.only(bottomRight: Radius.circular(25),topLeft: Radius.circular(25),topRight: Radius.circular(25)) ,
                  ),
                  child: Column(
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(60), // Image radius
                          child: Image.asset('assets/images/CCSE.jpeg', fit: BoxFit.cover),
                        ),
                      ),
                      Text('Control 2',style: Theme.of(context).textTheme.bodyText1,)
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            children: [
              SizedBox(
                width: 44,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context,DataStructure.routName,arguments: dataStructure );

                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFFED1E79),
                    borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(25),topLeft: Radius.circular(25),topRight: Radius.circular(25)) ,
                  ),
                  child: Column(
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(60), // Image radius
                          child: Image.asset('assets/images/CCSE.jpeg', fit: BoxFit.cover),
                        ),
                      ),
                      Text('Data Structure',style: Theme.of(context).textTheme.bodyText1,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context,LogicCircuits.routName,arguments: logicCircuits );

                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFFCF7E48),
                    borderRadius:  BorderRadius.only(bottomRight: Radius.circular(25),topLeft: Radius.circular(25),topRight: Radius.circular(25)) ,
                  ),
                  child: Column(
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(60), // Image radius
                          child: Image.asset('assets/images/CCSE.jpeg', fit: BoxFit.cover),
                        ),
                      ),
                      Text('Logic Circuits',style: Theme.of(context).textTheme.bodyText1,)
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            children: [
              SizedBox(
                width: 44,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context,Math5.routName,arguments: maths );

                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFF4882CF),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topLeft: Radius.circular(25),topRight: Radius.circular(25)) ,
                  ),
                  child: Column(
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(60), // Image radius
                          child: Image.asset('assets/images/CCSE.jpeg', fit: BoxFit.cover),
                        ),
                      ),
                      Text('Maths 5',style: Theme.of(context).textTheme.bodyText1,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context,PresentationSkills.routName,arguments: presentationSkills );

                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFFF2D352),
                    borderRadius:  BorderRadius.only(bottomRight: Radius.circular(25),topLeft: Radius.circular(25),topRight: Radius.circular(25)) ,
                  ),
                  child: Column(
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(60), // Image radius
                          child: Image.asset('assets/images/CCSE.jpeg', fit: BoxFit.cover),
                        ),
                      ),
                      Text('Presentation Skills',style: Theme.of(context).textTheme.bodyText1,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
