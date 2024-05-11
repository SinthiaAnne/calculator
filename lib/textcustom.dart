import 'package:flutter/material.dart';

class CustomWidgets extends StatelessWidget {
  const CustomWidgets({    super.key,
  });

  
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: TextField(
        controller: TextEditingController(),
        decoration: InputDecoration(
        border:InputBorder.none,
        
          
          fillColor: Color(0xff03214a),
          filled: true,
          ),
          
        style: TextStyle(fontSize: 20),
       readOnly: true,
       autofocus: true,
       showCursor: true,
      ),
    );
  }
}