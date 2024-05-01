import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/features/dashboard/cubit/dashboard_controller_state.dart';

class DashboardController extends Cubit<DashboardState> {
  DashboardController() : super(DashboardChangeState());

  int selectedTapIndex = 0;
  final PageController pageController = PageController();

  void onChangeTabIndex(int index) {
    if (index == 3) {
      throw 'dummy exception from mobile';
    }
    selectedTapIndex = index;
    pageController.jumpToPage(selectedTapIndex);
    emit(DashboardChangeState());
  }
}