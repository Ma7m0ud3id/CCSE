import 'package:computer_and_control_system/layout/Home_Screen.dart';
import 'package:flutter/material.dart';

import 'Setting.dart';
import 'Tasks/AddTaskBottomSheet.dart';

class MainScreen extends StatefulWidget {
  static const String routName='kljok';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

int count=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('CCSE 2025',style: TextStyle(fontSize: 25,
          color: Color(0xF9000000),
          //Color(0xFF5D9CEC),
          fontWeight: FontWeight.w400,)),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
         color: Color(0xF9000000),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
            elevation: 0,
          onTap:(index){
            count=index;
            setState((){});
          },
            currentIndex:count,
          items:[
          BottomNavigationBarItem(icon: Icon(Icons.list),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: '')
          ]
        ),


      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            BottomSheetAddTask();
          },
      shape: StadiumBorder(
      side: BorderSide(
      color: Color(0xF9000000) ,//change Dark mode (if)
      width: 4,
      ))),
      body:tap[count] ,
      );
  }

  List<Widget> tap=[HomeScreen(),Setting()];
    BottomSheetAddTask(){
   showModalBottomSheet(
     isScrollControlled: true,
       context: context,
       builder: (context) {
         return AddTaskBottomSheet();
       });



}
}
