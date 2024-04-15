import 'package:flutter/material.dart';
import 'package:task_flutter/features/auth/login/view/component/button_widget_login.dart';
import 'package:task_flutter/features/auth/login/view/component/required_date_login.dart';
import 'package:task_flutter/features/auth/verfication_code/view/page/verficatin_code_page.dart';

import '../component/button_widget_new_pass.dart';
import '../component/required_data_new_pass.dart';

class New_pass_Page extends StatelessWidget{
  New_pass_Page ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  SafeArea(

          child: Scaffold(
            appBar: AppBar(
              title: Center(child:  Text('Confirm Password')),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VerficationPage()));
                },
              ),
            ),
            body: RequiredDate_new_pass_Widget(),
            bottomNavigationBar: SizedBox(height: 200, child: Button_new_pass_Widget()),
          ),
        ));
  }
}