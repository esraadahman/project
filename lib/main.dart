import 'package:flutter/material.dart';
import 'package:task_flutter/Screens/SignIn.dart';
import 'package:task_flutter/features/auth/login/view/page/login_page.dart';

import 'features/auth/registration/view/page/regestration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),

    );
  }
}

