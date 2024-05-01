import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';
import 'package:task_flutter/features/dashboard/modules/User/cubit/user_cubit.dart';
import 'package:task_flutter/features/dashboard/modules/User/model/user_model.dart';
import 'package:task_flutter/features/dashboard/modules/User/view/component/CircularAv_with_background.dart';
import 'package:task_flutter/features/dashboard/modules/User/view/component/Edit_user_icon_widget.dart';
import 'package:task_flutter/features/dashboard/modules/User/view/component/profile_info_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
           UserCubit controller = context.read<UserCubit>();
          return   SingleChildScrollView(
            child: state is UserLoading
                ? const CircularProgressIndicator()
                : state is UserEmpty
                    ? const Center(
                        child: Icon(
                        CupertinoIcons.delete,
                        size: 100,
                        color: Colors.grey,
                      ))
                    :
            Column(
              children: [
                CircularAvatarWidget(),
                SizedBox(
                  height: 5,
                ),
                GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1, crossAxisSpacing: 10, mainAxisSpacing: 10),
                        // separatorBuilder: (_, int index) => const Divider(
                        //       height: 1,
                        //       thickness: 5,
                        //     ),
                        itemCount: controller.users.length,
                        itemBuilder: (_, int index) {
                          return ProfileInfoWidget(userModel: controller.users[index]);
                        }),
                 
                // ProfileInfoWidget(userModel: controller.users[1], )
              ],
            ),
          );
        },
      ),
    );
  }
}
