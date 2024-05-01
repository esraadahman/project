import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/decorations_text_filed.dart';
import 'package:task_flutter/core/utils/validation.dart';
import 'package:task_flutter/features/auth/login/view/page/login_page.dart';

class RequiredDate_forget_Widget extends StatelessWidget{
  RequiredDate_forget_Widget ({super.key});

  @override
  Widget build(BuildContext context){
    TextEditingController email = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Column(
          children: [
         ClipRRect(
           borderRadius: BorderRadius.circular(20),
          child: Image.asset(
                          "assets/images/logo.png",
                          height: 250,
                          width: 250,
                        ),
         ), SizedBox(
            height: 15,
          ),
            Text("Enter Your Email" , style: TextStyle(fontSize: 20, ),)
        ],),
      SizedBox(
        height: 20,
      ),
        TextFormField(
            controller: email,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.name,
            validator: Vaildation().emailVaild,
            decoration:Decorations_Text_Filed.decorations.copyWith(labelText: "Email",
            hintText: 'xxxxx@gmail.com',
              suffixIcon: Icon(Icons.email_sharp)
            )

        ),
      ],
    );
  }



}