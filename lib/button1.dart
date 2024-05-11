import 'package:flutter/material.dart';


  class Button1 extends StatelessWidget {
  const Button1({
    super.key, required this.lable,this.textColor = Colors.white
  });

  final String lable;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //TODO: on Tap
      },
      child: Material(
        elevation: 5,
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
        shadowColor: Colors.red,
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xff010b19),
          child: Text(
            lable,
          style: TextStyle(
            color: textColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            ),),
          ),
      ),
    );
  }
}
