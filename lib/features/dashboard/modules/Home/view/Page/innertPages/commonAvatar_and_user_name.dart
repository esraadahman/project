import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';

class CommonAvatarWidget extends StatelessWidget {
  const CommonAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 20,
                // backgroundImage: NetworkImage(widget.userimage!),
                backgroundImage: AssetImage("assets/images/logo.png"),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                   Text(
                    "Mariam",
                    // widget.username!,
                    style: TextStyle(
                        color: AppColors.tertiaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "22-3-2024",
                    style: TextStyle(
                        color: AppColors.tertiaryColor, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                width: 145,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 25,
                  ))
            ],
          );
  }
}