import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_flutter/features/auth/Authentcation/Auth.dart';
import 'package:task_flutter/features/auth/login/view/page/login_page.dart';
import 'package:task_flutter/features/auth/verrification/view/page/verification_page.dart';
import 'package:task_flutter/features/dashboard/view/page/dashboared.dart';
import 'package:task_flutter/firebase_options.dart';

import 'features/auth/onboarding/view/page/onbording_page.dart';
import 'features/auth/registration/view/page/regestration_page.dart';

// DevicePreview(
//   enabled: true,
//   builder: (context) => MyApp(), // Wrap your app
// ),
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Authentication.auth.currentUser != null ? DashbordPage():LoginPage(),
    );
  }
}

// void main() async{
// WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences sharedPreferences =await  SharedPreferences.getInstance() ;
//   bool onBoarding = sharedPreferences.getBool('onboarding')??false;

//   MaterialApp MyApp = MaterialApp(

//   // home:onBoarding? LoginPage():onboarding_page(),

//     onGenerateRoute: MyRoutes.onGenrateRoute,
//     onGenerateInitialRoutes:(_)=>MyRoutes.initRoutes
//   );

//   runApp(MyApp);
// }

// class MyRoutes {
//   static List<Route> initRoutes = [
//     MaterialPageRoute<dynamic>(builder: (context) => onboarding_page()),
//     MaterialPageRoute<dynamic>(builder: (context) => RgestrationPage())
//   ];

//   static Route<dynamic> onGenrateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case 'Login':
//         return MaterialPageRoute<dynamic>(builder: (context) => LoginPage());
//       case 'Regestration':
//         return MaterialPageRoute<dynamic>(
//             builder: (context) => RgestrationPage());
//       default:
//         return MaterialPageRoute<dynamic>(builder: (context) => LoginPage());
//     }
//   }
// }
