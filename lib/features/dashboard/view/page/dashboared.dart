import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/features/dashboard/cubit/dashboard_controller_cubit.dart';
import 'package:task_flutter/features/dashboard/cubit/dashboard_controller_state.dart';
import 'package:task_flutter/features/dashboard/modules/User/model/user_model.dart';
import 'package:task_flutter/features/dashboard/modules/User/view/page/profilePage.dart';

class DashbordPage extends StatelessWidget {

  const DashbordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardController(),
      child: BlocBuilder<DashboardController, DashboardState>(
        builder: (context, state) {
          DashboardController controller = context.read<DashboardController>();
          return Scaffold(
          
            body: PageView(
              controller: controller.pageController,
              onPageChanged: controller.onChangeTabIndex,
              children: const [
                Text('Home'),
                Text('Saved List'),
               ProfileScreen(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.selectedTapIndex,
              onTap: controller.onChangeTabIndex,
              unselectedItemColor: Colors.black,
              showUnselectedLabels: true,
              unselectedLabelStyle: const TextStyle(fontSize: 15, color: Colors.red),
              items: const [
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'home'),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_favorites_alt_fill), label: 'Saved List'),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_alt), label: 'Profile'),
              ],
            ),
          );
        },
      ),
    );
  }
}