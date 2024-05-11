import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';

import 'button1.dart';
import 'textcustom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight= MediaQuery.sizeOf(context).height;
    final screenPadding =  EdgeInsets.symmetric(horizontal: 25,vertical: 30);
    final screenDecoration=BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              );
    return Scaffold(
        backgroundColor: Color(0xff03214a),
        appBar: AppBar(
          backgroundColor:Color(0xff021631),
          title:const Text(
            'Calculator',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),

        body: Column(
          children: [
            CustomWidgets(),
           const  Spacer(),
            Container(
              height: screenHeight*.7,
              width: double.infinity,
              padding: screenPadding,
             decoration: screenDecoration,

             child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
               child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(lable: 'AC',textColor: Colors.yellow.shade900),
                      Button1(lable: 'C',textColor: Colors.yellow.shade900),
                      Button1(lable: 'X',textColor: Colors.yellow.shade900),
                      Button1(lable: '/',textColor: Colors.yellow.shade900),
                    ],
                   
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(lable: '7',),
                      Button1(lable: '8',),
                      Button1(lable: '9',),
                      Button1(lable: '-',textColor: Colors.yellow.shade900),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(lable: '4',),
                      Button1(lable: '5',),
                      Button1(lable: '6',),
                      Button1(lable: '+',textColor: Colors.yellow.shade900),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(lable: '1',),
                      Button1(lable: '2',),
                      Button1(lable: '3',),
                      Button1(lable: '%',textColor: Colors.yellow.shade900),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(lable: 'e',),
                      Button1(lable: '0',),
                      Button1(lable: '.',),
                      Button1(lable: '=',textColor: Colors.yellow.shade900),
                    ],
                  ),
                ],
               ),
             ),
            )
          ],
        ),
    );
  }
}

