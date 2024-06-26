import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:task_flutter/core/utils/decorations_text_filed.dart';
import 'package:task_flutter/core/utils/validation.dart';
import 'package:task_flutter/features/auth/login/cubit/log_in_cubit.dart';

class RequiredDate_login_Widget extends StatelessWidget {
  RequiredDate_login_Widget({super.key});


  @override
  Widget build(BuildContext context) {
   
    return BlocProvider(
      create: (context) => LogInCubit(),
      child: BlocBuilder<LogInCubit, LogInState>(
        builder: (context, state) {
          LogInCubit control = context.read<LogInCubit>();
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
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Friend Circle  Login",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      controller: control.emailController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.name,
                      // validator: Vaildation().emailVaild,
                      decoration: Decorations_Text_Filed.decorations.copyWith(
                          labelText: "Email",
                          hintText: 'xxxxx@gmail.com',
                          suffixIcon: Icon(Icons.email_sharp))),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: control.passController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.name,
                    // validator: Vaildation().passwordVaild,
                    decoration: Decorations_Text_Filed.decorations.copyWith(
                      labelText: "Password",
                      hintText: 'xxxxxx',
                      suffixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                    obscuringCharacter: '*',
                  )
                ],
              );
        },
      ),
    );
  }
}
