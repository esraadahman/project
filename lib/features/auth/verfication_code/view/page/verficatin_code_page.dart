import 'package:flutter/material.dart';
import 'package:task_flutter/features/auth/forget/view/page/forget_page.dart';

import '../component/button_widget_verfication_code.dart';
import '../component/required_date_verfication_code.dart';

class VerficationPage extends StatelessWidget{
  VerficationPage ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  SafeArea(

          child: Scaffold(
            appBar: AppBar(
              title: Center(child:  Text('Confirm Code')),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPage()));
                },
              ),
            ),
            body: RequiredDate_verfication_Widget(),
           bottomNavigationBar: SizedBox(height: 200, child: Button_verfication_Widget()),
          ),
        ));
  }
}