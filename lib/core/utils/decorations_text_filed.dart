import 'package:flutter/material.dart';

class Decorations_Text_Filed{

 static InputDecoration decorations=  InputDecoration(
    suffixIcon: Icon(Icons.remove_red_eye),
    prefixIcon: Icon(Icons.abc),
    floatingLabelAlignment: FloatingLabelAlignment.center,
    hintText: "xxxxx",
    border: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.grey,
            width: 2
        ),
        borderRadius: BorderRadius.circular(30)
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.blue,
            width: 2
        ),
        borderRadius: BorderRadius.circular(10)
    ),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.red,
            width: 2
        ),
        borderRadius: BorderRadius.circular(10)
    ),
  );
 static InputDecoration decorations2=  InputDecoration(
   floatingLabelAlignment: FloatingLabelAlignment.center,
   hintText: "x",
   border: OutlineInputBorder(
       borderSide: BorderSide(
           color: Colors.grey,
           width: 2
       ),
       borderRadius: BorderRadius.circular(30)
   ),
   focusedBorder: OutlineInputBorder(
       borderSide: BorderSide(
           color: Colors.blue,
           width: 2
       ),
       borderRadius: BorderRadius.circular(10)
   ),
   errorBorder: OutlineInputBorder(
       borderSide: BorderSide(
           color: Colors.red,
           width: 2
       ),
       borderRadius: BorderRadius.circular(10)
   ),
 );
}