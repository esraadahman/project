import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_flutter/core/utils/decorations_text_filed.dart';
import 'package:task_flutter/core/utils/validation.dart';

class RequiredDate_verfication_Widget extends StatelessWidget{
  RequiredDate_verfication_Widget ({super.key});

  @override
  Widget build(BuildContext context){
    TextEditingController code1 = TextEditingController();
    TextEditingController code2 = TextEditingController();
    TextEditingController code3 = TextEditingController();
    TextEditingController code4 = TextEditingController();
    return Center(
      child: Row(
        children: [
          Expanded(child: TextFormField(
              controller: code1,
              maxLength: 1,
              textAlign: TextAlign.center,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
              validator: Vaildation().CodeVaild,
              decoration:Decorations_Text_Filed.decorations2
          ),),
          SizedBox(
            width: 8,
          ),
          Expanded(child: TextFormField(
              controller: code2,
              maxLength: 1,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
              validator: Vaildation().CodeVaild,
              decoration:Decorations_Text_Filed.decorations2
          ),),
          SizedBox(
            width: 8,
          ),
          Expanded(child: TextFormField(
              controller: code3,
              maxLength: 1,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
              validator: Vaildation().CodeVaild,
              decoration:Decorations_Text_Filed.decorations2
          ),),
          SizedBox(
            width: 8,
          ),
          Expanded(child: TextFormField(
              controller: code4,
              maxLength: 1,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
              validator: Vaildation().CodeVaild,
              decoration:Decorations_Text_Filed.decorations2
          ),),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }



}