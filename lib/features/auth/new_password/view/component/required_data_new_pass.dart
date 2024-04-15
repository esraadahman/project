import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/decorations_text_filed.dart';
import 'package:task_flutter/core/utils/validation.dart';

class RequiredDate_new_pass_Widget extends StatelessWidget{
  RequiredDate_new_pass_Widget ({super.key});

  @override
  Widget build(BuildContext context){
    TextEditingController pass1 = TextEditingController();
    TextEditingController pass2=TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        TextFormField(
          controller: pass1,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.name,
          validator: Vaildation().passwordVaild,
          decoration:Decorations_Text_Filed.decorations.copyWith(labelText: "Password",
            hintText: 'xxxxxx',
            suffixIcon: Icon(Icons.lock),
          ) ,
          obscureText: true,
          obscuringCharacter: '*',
        ),
        SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: pass2,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.name,
          validator: Vaildation().passwordVaild,
          decoration:Decorations_Text_Filed.decorations.copyWith(labelText: "Confirm Password",
            hintText: 'xxxxxx',
            suffixIcon: Icon(Icons.lock),
          ) ,
          obscureText: true,
          obscuringCharacter: '*',
        )
      ],
    );
  }



}