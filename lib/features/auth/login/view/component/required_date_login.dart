import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/decorations_text_filed.dart';
import 'package:task_flutter/core/utils/validation.dart';

class RequiredDate_login_Widget extends StatelessWidget{
  RequiredDate_login_Widget ({super.key});

  @override
  Widget build(BuildContext context){
    TextEditingController email = TextEditingController();
    TextEditingController pass=TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:  Image.network("https://th.bing.com/th/id/OIP.s0di0T2Im6UlsWGC_3zYjQHaHa?rs=1&pid=ImgDetMain",height: 100,width: 100,),
            ), SizedBox(
              height: 15,
            ),
            Text("Instagram  Login" , style: TextStyle(fontSize: 20, ),)
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
        SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: pass,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.name,
          validator: Vaildation().passwordVaild,
          decoration:Decorations_Text_Filed.decorations.copyWith(labelText: "Password",
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