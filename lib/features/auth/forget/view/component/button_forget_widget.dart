import 'package:flutter/material.dart';

import '../../../verfication_code/view/page/verficatin_code_page.dart';
class Button_forget_Widget extends StatelessWidget{
  Button_forget_Widget ({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton(
          style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.blue)),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => VerficationPage()));
            },
            child: Text("Send Code", style: TextStyle(
              fontSize: 17
            ),)),
      ],
    );


  }}