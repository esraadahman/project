import 'package:flutter/material.dart';
import 'package:task_flutter/features/auth/forget/view/component/required_data_forget_widget.dart';
import '../../../login/view/page/login_page.dart';
import '../component/appbar_login.dart';
import '../component/button_forget_widget.dart';

class ForgetPage extends StatelessWidget{
  ForgetPage ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  SafeArea(

          child: Scaffold(
           appBar: AppBar(
             title: Center(child:  Text('Forget Password')),
             leading: IconButton(
               icon: Icon(Icons.arrow_back_ios),
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
               },
             ),
           ),
            body: RequiredDate_forget_Widget(),
            bottomNavigationBar: SizedBox(height: 130, child: Button_forget_Widget()),
          ),
        ));
  }
}