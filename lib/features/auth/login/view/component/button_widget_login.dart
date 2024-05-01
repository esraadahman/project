import 'package:flutter/material.dart';
import 'package:task_flutter/features/auth/forget/view/page/forget_page.dart';

import '../../../registration/view/page/regestration_page.dart';
class Button_login_Widget extends StatelessWidget{
  Button_login_Widget ({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton(
            style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Color(0xffC75427))),
            onPressed: (){},
            child: Text("Login", style: TextStyle(
                fontSize: 17
            ),)),
        SizedBox(
          height: 5,
        ),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPage()));
        }, child: Text("Forget Password", style: TextStyle(
            fontSize: 17,
            color: Color(0xffC75427),
            decoration: TextDecoration.underline,
            decorationThickness: 2,
            decorationColor: Color(0xffC75427)
        ),)),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Do not have an account ?",style: TextStyle(
                fontSize: 15
            ), ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RgestrationPage()));
            }, child: Text("Sign Up", style: TextStyle(
                fontSize: 20,
                color: Color(0xffC75427),
                decoration: TextDecoration.underline,
                decorationThickness: 4,
                decorationColor: Color(0xffC75427)
            ),))
          ],),


      ],
    );


  }}