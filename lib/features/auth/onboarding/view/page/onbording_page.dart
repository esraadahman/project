import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/features/auth/onboarding/view/components/onbording_body.dart';
import 'package:task_flutter/features/auth/onboarding/view/components/onbording_buttons.dart';

import '../../controller/cubit/onboarding_controller_cubit.dart';

class onboarding_page extends StatelessWidget {
  onboarding_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: BlocProvider<OnboardingControllerCubit>(
          create: (context) => OnboardingControllerCubit(),
          child: BlocBuilder< OnboardingControllerCubit,  OnboardingControllerState>(
            builder: (context, state) {
              OnboardingControllerCubit controller = context.read<OnboardingControllerCubit>();
              return Scaffold(
                body: onboarding_body(controller: controller,),
                bottomNavigationBar:
                    SizedBox(height: 120, child: onboarding_button(controller: controller,)),
              );
            },
          ),
        )));
  }
}
