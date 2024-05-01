import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';
import 'package:task_flutter/features/dashboard/modules/User/model/user_model.dart';
import 'package:task_flutter/features/dashboard/modules/User/view/component/Edit_user_icon_widget.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({super.key,required this.userModel});
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Row(
                  children: [
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                     '${userModel.first_name}  ${userModel.last_name}',
                      style: TextStyle(
                          color: AppColors.tertiaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    EditIconWidget(),
                      
                  ],
                ),
                Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                Text(
                  '@${userModel.email}',
                  // '@${fullname}',
                  style: TextStyle(
                    color: AppColors.tertiaryColor,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
      ],
      
    );
            
  }
}