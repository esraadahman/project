import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/features/auth/onboarding/controller/cubit/onboarding_controller_cubit.dart';

class onboarding_body extends StatelessWidget {
  onboarding_body({required this.controller});
OnboardingControllerCubit controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                body:
                Column(
                  children: [
                    Text('Welcome in Our App'),
                    Expanded(
                      child: BlocProvider<OnboardingControllerCubit>.value(
                        value: controller,
                        child: BlocBuilder< OnboardingControllerCubit,  OnboardingControllerState>(
                          builder: (context, state) {
                            OnboardingControllerCubit controller = context.read<OnboardingControllerCubit>();
                            return PageView(
                              controller: controller.pageController,
                                children:   List.generate(controller.images.length, (index){
                                  return Column(
                                    children: [
                                      Image.asset(controller.data[index].image),
                                      Text(controller.data[index].title,style: TextStyle(
                                          fontSize: 20 , color: controller.data[index].color
                                      ),),
                                      Text(controller.data[index].subtitle,style: TextStyle(
                                          fontSize: 15 , color: Colors.grey
                                      ),),
                                    ],
                                  );
                                })
                            );
                          },
                        ),
                      ),
                    )
                  ],
                )
            )));
  }
}