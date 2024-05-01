import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/Page/innertPages/NewPost/view/page/NewPost.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/Page/innertPages/NewStory/view/page/NewStory.dart';

class AddButtonsWidget extends StatefulWidget {
  const AddButtonsWidget({super.key});

  @override
  State<AddButtonsWidget> createState() => _nameState();
}

class _nameState extends State<AddButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return     Row(
            children: [
              SizedBox(
                width: 60,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewPostPage(
                                // userimage: userimage,
                                // username: username,
                              ))
                              );
                },
                //   try{
                //     FireStore.AddPost("Mariam","https://img.freepik.com/free-photo/portrait-person-with-handwritten-text-it_23-2150734496.jpg?size=626&ext=jpg&ga=GA1.1.1056193589.1669837405&semt=ais","https://img.freepik.com/free-photo/portrait-person-with-handwritten-text-it_23-2150734496.jpg?size=626&ext=jpg&ga=GA1.1.1056193589.1669837405&semt=ais","this is the first post", "2024-02-23");
                //   }catch(e){print(e);}
                // },
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.tertiaryColor),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.backgroundColor,
                        size: 17,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Post",
                        style: TextStyle(
                            color: AppColors.backgroundColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewStory(
                                // username: username,
                                // userimage: userimage,
                              )));
                },
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.tertiaryColor),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.image,
                        color: AppColors.backgroundColor,
                        size: 17,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        " Story",
                        style: TextStyle(
                            color: AppColors.backgroundColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}