import 'package:flutter/material.dart';
class Button_new_pass_Widget extends StatelessWidget{
  Button_new_pass_Widget ({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton(
            style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.blue)),
            onPressed: (){

            },
            child: Text("Confirm", style: TextStyle(
                fontSize: 17
            ),)),
      ],
    );


  }}