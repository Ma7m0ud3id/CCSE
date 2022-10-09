import 'package:computer_and_control_system/layout/study/Circuits/Lecture.dart';
import 'package:computer_and_control_system/layout/study/Data%20Structure/Lecture3.dart';
import 'package:computer_and_control_system/layout/study/Data%20Structure/Section3.dart';
import 'package:flutter/material.dart';

class DataStructure extends StatelessWidget {
static const String routName='klksnokkojjkxn';

  @override
  Widget build(BuildContext context) {
    var dataStructure= ModalRoute.of(context)?. settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('$dataStructure',style: TextStyle(fontSize: 25,
          color: Color(0xF9000000),
          //Color(0xFF5D9CEC),
          fontWeight: FontWeight.w400,)),
      ),
      body:Column(
        children: [
        SizedBox(
        height: 40,
      ),

      Row(
        children: [
          SizedBox(
            width: 44,
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Lecture3.routName);

            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xFF003E90),
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
                  Text('Lecture',style: Theme.of(context).textTheme.bodyText1,)
                ],
              ),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          InkWell(
            onTap: (){
             Navigator.pushNamed(context, Section3.routName);

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
                  Text('Section',style: Theme.of(context).textTheme.bodyText1,)
                ],
              ),
            ),
          )
        ],
      ),]));
  }
}
