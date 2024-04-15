import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/core/utils/decorations_text_filed.dart';
import 'package:task_flutter/core/utils/validation.dart';
import 'package:task_flutter/features/auth/registration/controller/cubit/regestration_cubit.dart';
import 'package:task_flutter/features/auth/registration/view/component/text_name_formate.dart';

class RequiredDateWidget extends StatelessWidget {
  RequiredDateWidget({required this.controller });
final RegestrationCubit controller ;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegestrationCubit>.value(
      value:controller,
      child:
          BlocBuilder< RegestrationCubit,  RegestrationState>(
            builder: (context, state) {
              return Form(
                key: controller.formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://th.bing.com/th/id/OIP.s0di0T2Im6UlsWGC_3zYjQHaHa?rs=1&pid=ImgDetMain",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Instagram  Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                
                
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        controller: controller.first,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.name,
                        validator: Vaildation().nameVaild,
                        decoration: Decorations_Text_Filed.decorations
                            .copyWith(labelText: "First Name")),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        controller: controller.age,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          MyageTextFiledFormate()
                        ],
                        validator: Vaildation().nameVaild,
                        decoration: Decorations_Text_Filed.decorations
                            .copyWith(labelText: "Age ", prefixIcon: Icon(Icons.lock_clock))),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                        controller: controller.last,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.name,
                        validator: Vaildation().nameVaild,
                        decoration: Decorations_Text_Filed.decorations
                            .copyWith(labelText: "Last Name")),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                        controller: controller.email,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.name,
                        validator: Vaildation().emailVaild,
                        decoration: Decorations_Text_Filed.decorations.copyWith(
                            labelText: "Email",
                            hintText: 'xxxxx@gmail.com',
                            suffixIcon: Icon(Icons.email_sharp))),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: controller.pass,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.name,
                      validator: Vaildation().passwordVaild,
                      decoration: Decorations_Text_Filed.decorations.copyWith(
                        labelText: "Password",
                        hintText: 'xxxxxx',
                        suffixIcon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                      obscuringCharacter: '*',
                    )
                  ],),
              );
            } ),
    );
  }
}
