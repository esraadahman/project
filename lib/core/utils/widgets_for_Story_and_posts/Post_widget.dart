import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';
import 'package:task_flutter/core/utils/models_for_story_and_post/post_model.dart';


class PostWidget extends StatefulWidget {
  PostWidget({super.key, required this.post});
  Post? post;
  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 350,
        height: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: AppColors.tertiaryColor)),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.primaryColor,
                  child: CircleAvatar(
                    radius: 23,
                    backgroundImage: NetworkImage(widget.post!.userImage!),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      widget.post!.userName!,
                      style: TextStyle(
                        color: AppColors.tertiaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "21 Feb 2024",
                      style: TextStyle(
                        color: AppColors.tertiaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 120,
                ),
                IconButton(
                    onPressed: () {
                      // setState(() {
                      //   FireStore.AddSavedList(
                      //       widget.post!.userName!,
                      //       widget.post!.userImage!,
                      //       widget.post!.postImage!,
                      //       "3:30",
                      //       widget.post!.des!);
                      // });
                    },
                    icon: const Icon(Icons.bookmark_border,
                        color: AppColors.tertiaryColor, size: 25)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  widget.post!.des!,
                  style: const TextStyle(
                    color: AppColors.tertiaryColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.post!.postImage!),
                      fit: BoxFit.cover)),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border,
                        color: AppColors.tertiaryColor)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.comment_outlined,
                        color: AppColors.tertiaryColor)),
                SizedBox(
                  width: 170,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share, color: AppColors.tertiaryColor)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
