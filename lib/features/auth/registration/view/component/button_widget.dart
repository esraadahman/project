import 'package:flutter/material.dart';
import 'package:task_flutter/features/auth/login/view/page/login_page.dart';

import '../../../verfication_code/view/page/verficatin_code_page.dart';
class ButtonWidget extends StatelessWidget{
  ButtonWidget ({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton(
          style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.blue)),
            onPressed: (){
          //    Navigator.push(context, MaterialPageRoute(builder: (context) => VerficationPage()));
            },
            child: Text("Confirm", style: TextStyle(
              fontSize: 17
            ),)),
       SizedBox(
         height: 15,
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Text("Have an account ?",style: TextStyle(
           fontSize: 17
         ), ),
         TextButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
         }, child: Text("LOGIN", style: TextStyle(
           fontSize: 22,
           color: Colors.blue,
         decoration: TextDecoration.underline,
             decorationThickness: 4,
           decorationColor: Colors.blue
         ),))
       ],),


      ],
    );


  }}