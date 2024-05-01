import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/features/auth/onboarding/controller/cubit/onboarding_controller_cubit.dart';

class onboarding_button extends StatelessWidget {
  onboarding_button({required this.controller});
  OnboardingControllerCubit controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                body: BlocProvider<OnboardingControllerCubit>.value(
                    value: controller,
                    child: BlocBuilder<OnboardingControllerCubit,
                        OnboardingControllerState>(builder: (context, state) {
                      OnboardingControllerCubit controller =
                          context.read<OnboardingControllerCubit>();
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FilledButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.blue)),
                              onPressed: () {
                                controller.onChangeToNext();
                              },
                              child: Text(
                                "next",
                                style: TextStyle(fontSize: 17),
                              )),
                          FilledButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.blue)),
                              onPressed: () {
                                controller.onChangeToSkip(context);
                              },
                              child: Text(
                                "Skip",
                                style: TextStyle(fontSize: 17),
                              )),
                        ],
                      );
                    })))));
  }
}
