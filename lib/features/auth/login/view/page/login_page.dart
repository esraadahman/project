import 'package:flutter/material.dart';
import 'package:task_flutter/features/auth/login/view/component/button_widget_login.dart';
import 'package:task_flutter/features/auth/login/view/component/required_date_login.dart';

class LoginPage extends StatelessWidget{
  LoginPage ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  SafeArea(

          child: Scaffold(

            body: RequiredDate_login_Widget(),
          bottomNavigationBar: SizedBox(height: 210, child: Button_login_Widget()),
          ),
        ));
  }
}