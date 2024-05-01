import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';

class EditIconWidget extends StatelessWidget {
  const EditIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => EditUserInfo()));
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: AppColors.tertiaryColor,
                      size: 25,
                    ));
  }
}