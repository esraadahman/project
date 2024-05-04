import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';
import 'package:task_flutter/features/auth/Authentcation/Auth.dart';
import 'package:task_flutter/features/auth/registration/view/page/regestration_page.dart';
import 'package:task_flutter/features/dashboard/modules/Home/cubit/home_cubit.dart';

class HomeAvatar extends StatelessWidget {
  const HomeAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          HomeCubit controller = HomeCubit();
          return Row(
            children: [
              const SizedBox(
                width: 5,
              ),
               CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(controller.userimage!),
               
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Text(
                    controller.username!,
                  
                    style: TextStyle(
                        color: AppColors.tertiaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    // username!,
                    "Mariom",
                    style: TextStyle(
                        color: AppColors.tertiaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                width: 130,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    size: 25,
                    color: AppColors.tertiaryColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 25,
                    color: AppColors.tertiaryColor,
                  )),
              IconButton(
                  onPressed: () {
                  Authentication.auth.signOut();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RgestrationPage()));
                  },
                  icon: const Icon(
                    Icons.logout_outlined,
                    size: 25,
                  )),
            ],
          );
        },
      ),
    );
  }
}
