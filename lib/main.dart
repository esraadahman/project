import 'dart:js';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_flutter/features/auth/login/view/page/login_page.dart';

import 'features/auth/onboarding/view/page/onbording_page.dart';
import 'features/auth/registration/view/page/regestration_page.dart';


// void main() {
//   runApp(const MyApp());
// }

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

void main() async{
WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences =await  SharedPreferences.getInstance() ;
  bool onBoarding = sharedPreferences.getBool('onboarding')??false;


  MaterialApp MyApp = MaterialApp(

  //home:onBoarding? LoginPage():onboarding_page(),


    onGenerateRoute: MyRoutes.onGenrateRoute,
    onGenerateInitialRoutes:(_)=>MyRoutes.initRoutes
  );


  runApp(MyApp);
}



class MyRoutes{
static  List <Route> initRoutes = [MaterialPageRoute<dynamic>(builder: (context) =>onboarding_page()),
  MaterialPageRoute<dynamic>(builder: (context) =>onboarding_page())
  ];

static Route<dynamic> onGenrateRoute(RouteSettings settings){

switch(settings.name){
case 'Login':  return MaterialPageRoute<dynamic>(builder: (context) =>LoginPage());
case 'Regestration':  return MaterialPageRoute<dynamic>(builder: (context) =>RgestrationPage());
default: return MaterialPageRoute<dynamic>(builder: (context) =>LoginPage());
}
}}