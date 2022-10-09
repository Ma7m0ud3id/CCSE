import 'package:computer_and_control_system/layout/study/Circuits/Test.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Lecture1 extends StatelessWidget {
  static const String routName = "jnkjnjihsdkncsd";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('CCSE 2025',style: TextStyle(fontSize: 25,
        color: Color(0xF9000000),
    //Color(0xFF5D9CEC),
    fontWeight: FontWeight.w400,)),
    ),
     body:
      SingleChildScrollView(
      child: Column(
        children: [
          InkWell(

            onTap: (){
              Navigator.pushNamed(context, Test.routName);
              // Gotofrist('https://drive.google.com/drive/u/0/folders/1oq0lsRtiV0GktpNZRazc5pxF-5c9b8CK?lfhs=2');
            },
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    // changes position of shadow
                  ),
                ],
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Lecture 1',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      //Color(0xFF5D9CEC),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'part 1',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      //Color(0xFF5D9CEC),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.volume_up),
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
  Gotofrist(String url)async{
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri))
      await launchUrl(uri);
    else
      // can't launch url, there is some error
      throw "Could not launch $url";
  }
}
