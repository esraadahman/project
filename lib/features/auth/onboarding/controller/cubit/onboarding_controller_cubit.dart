import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_flutter/features/auth/login/view/page/login_page.dart';
import 'package:task_flutter/features/auth/onboarding/model/onbording_model.dart';

part 'onboarding_controller_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  OnboardingControllerCubit() : super(OnboardingControllerInitial());

  List images = [
    'assets/images/FB_IMG_1613917904844.jpg',
    'assets/images/FB_IMG_1613917904844.jpg',
    'assets/images/FB_IMG_1613917904844.jpg',
  ];
  List title = ['first', 'secound', 'third'];
  List color = [Colors.red, Colors.black, Colors.green];
  List subtitle = ['first screen', 'secound screen', 'third screen'];
  List data = [
    onbording_model(
        image: 'assets/images/FB_IMG_1613917904844.jpg',
        title: 'first',
        subtitle: 'first screen'),
    onbording_model(
        image: 'assets/images/FB_IMG_1613917904844.jpg',
        title: 'secound',
        subtitle: 'secound screen',
        color: Colors.black),
    onbording_model(
        image: 'assets/images/FB_IMG_1613917904844.jpg',
        title: 'third',
        subtitle: 'third screen',
        color: Colors.red)
  ];
  PageController pageController = PageController();
  void onChangeToNext() {
    pageController.nextPage(
        duration: Duration(seconds: 1), curve: Curves.bounceIn);
  }

  Future<void> onChangeToSkip(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool onBoarding =  await sharedPreferences.setBool("onboarding", true) as bool;

    Navigator.push(
        context, MaterialPageRoute<void>(builder: (context) => LoginPage()));
  }
}
