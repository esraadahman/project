import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';

class PostNewButtonWidget extends StatefulWidget {
  const PostNewButtonWidget({super.key});

  @override
  State<PostNewButtonWidget> createState() => _PostNewButtonWidgetState();
}

class _PostNewButtonWidgetState extends State<PostNewButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
                 children: [
                   GestureDetector(
                                 onTap: () async {
                    // await FireStore.AddPost(widget.username!, widget.userimage!, url!,
                    //     des.text, "3:30pm");
                                 },
                                 child: Container(
                    width: 200,
                    height: 40,
                    child: Center(
                        child: Text(
                      "Post",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.tertiaryColor,
                    ),
                                 ),
                               ),
                 ],
            
    );
    
  }
}