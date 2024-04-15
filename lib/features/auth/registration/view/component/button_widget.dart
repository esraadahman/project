import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/features/auth/login/view/page/login_page.dart';
import '../../controller/cubit/regestration_cubit.dart';
class ButtonWidget extends StatelessWidget{
  ButtonWidget({required this.controller });
  final RegestrationCubit controller ;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegestrationCubit>.value(
        value:controller,
        child:
        BlocBuilder< RegestrationCubit,  RegestrationState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    //    Navigator.push(context, MaterialPageRoute(builder: (context) => VerficationPage()));
                    controller.onPressedConfirmButton(context);
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
                  Text("Have an account ?", style: TextStyle(
                      fontSize: 17
                  ),),
                  TextButton(onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
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
        }));
  }}