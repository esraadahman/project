import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../login/view/page/login_page.dart';

class appbar_login extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return AppBar(
      title: Text('Forget Password'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
      ),
    );}}