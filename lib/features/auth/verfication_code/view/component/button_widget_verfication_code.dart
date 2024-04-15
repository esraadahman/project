import 'package:flutter/material.dart';
import 'package:task_flutter/features/auth/login/view/page/login_page.dart';

import '../../../new_password/view/page/new_pass_page.dart';
class Button_verfication_Widget extends StatelessWidget{
  Button_verfication_Widget ({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton(
            style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.blue)),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => New_pass_Page()));
            },
            child: Text("Confirm", style: TextStyle(
                fontSize: 17
            ),)),
      ],
    );


  }}