import 'package:flutter/material.dart';
import 'package:task_flutter/features/auth/registration/view/component/button_widget.dart';
import 'package:task_flutter/features/auth/registration/view/component/required_data_widget.dart';

class RgestrationPage extends StatelessWidget{
  const RgestrationPage ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
     home:  SafeArea(

      child: Scaffold(

        body: RequiredDateWidget(),
        bottomNavigationBar: SizedBox(height: 130, child: ButtonWidget()),
      ),
    ));
  }
}