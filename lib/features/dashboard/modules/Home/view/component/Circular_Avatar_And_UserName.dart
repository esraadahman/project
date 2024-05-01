import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';

class HomeAvatar extends StatelessWidget {
  const HomeAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              const CircleAvatar(
                radius: 25,
                // backgroundImage: NetworkImage(userimage!),
                backgroundImage: AssetImage("assets/images/logo.png"),
              ),
              const SizedBox(
                width: 5,
              ),
              const Column(
                children: [
                  Text(
                    // username!,
                    "Mariam",
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
                    // FireStore.auth.signOut();
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => WelcomeScreen()));
                  },
                  icon: const Icon(
                    Icons.logout_outlined,
                    size: 25,
                  )),
            ],
          );
  }
}