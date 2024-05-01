
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/features/auth/login/view/page/login_page.dart';
import 'package:task_flutter/features/auth/verrification/view/page/verification_page.dart';
import 'package:task_flutter/features/dashboard/modules/User/model/repos/local_db.dart';
import 'package:task_flutter/features/dashboard/view/page/dashboared.dart';
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
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color(0xffC75427))),
                    onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => DashbordPage()));
                      controller.onPressedConfirmButton(context);
                    },
                    child: const Text("Confirm", style: TextStyle(
                        fontSize: 17
                    ),)),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have an account ?", style: TextStyle(
                        fontSize: 17
                    ),),
                    TextButton(onPressed: () async {
                       await (await DatabaseRepo.instance).insert(first_name: controller.first.toString(), last_name: controller.last.toString(),email: controller.email.toString(),age: controller.age.toString());

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    }, child: const Text("LOGIN", style: TextStyle(
                        fontSize: 19,
                        color:Color(0xffC75427),
                        decoration: TextDecoration.underline,
                        decorationThickness: 3,
                        decorationColor: Color(0xffC75427)
                    ),))
                  ],),
            
            
              ],
            ),
          );
        }));
  }}