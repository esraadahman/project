import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';
import 'package:task_flutter/core/utils/models_for_story_and_post/story_model.dart';


class StoryWidget extends StatefulWidget {
  StoryWidget({super.key, required this.story});
  Story? story;
  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 70,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => StoryView(
                //                 storyInfo: StoryInfo(
                //               username: widget.story!.userName,
                //               storyImg: widget.story!.storyImage,
                //               userImg: widget.story!.userImage,
                //               date: DateTime.now().toString(),
                //             ))));
              },
              child: Container(
                  width: 70,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(widget.story!.storyImage!),
                        fit: BoxFit.cover),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: AppColors.quarternaryColor,
                  child: CircleAvatar(
                    radius: 9,
                    backgroundImage: NetworkImage(widget.story!.userImage!),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.story!.userName!,
                    style: TextStyle(
                        color: AppColors.tertiaryColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ],
        ));
  }
}
