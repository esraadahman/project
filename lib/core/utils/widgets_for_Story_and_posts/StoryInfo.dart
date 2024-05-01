import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';
import 'package:task_flutter/core/utils/models_for_story_and_post/StroyInfo_model.dart';


class StoryInfoWidget extends StatefulWidget {
  StoryInfoWidget({
    super.key,
    required this.storyInfo,
  });
  StoryInfo? storyInfo;

  @override
  State<StoryInfoWidget> createState() => _StoryInfoState();
}

class _StoryInfoState extends State<StoryInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(widget.storyInfo!.storyImg!),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(width: 30),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.tertiaryColor,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            NetworkImage(widget.storyInfo!.userImg!),
                      )),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        widget.storyInfo!.username!,
                        style: TextStyle(
                            color: AppColors.tertiaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.storyInfo!.date!,
                        style: TextStyle(
                          color: AppColors.tertiaryColor,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 70),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: AppColors.tertiaryColor,
                      )),
                ],
              ),
            ],
          )),
    );
  }
}
