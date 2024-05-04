import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';
import 'package:task_flutter/core/repo/firebase.dart';

class PostNewButtonWidget extends StatefulWidget {
   PostNewButtonWidget({super.key, required this.username, required this.userimage,required this.url});
  String? username;
  String? userimage;
  String? url;

  @override
  State<PostNewButtonWidget> createState() => _PostNewButtonWidgetState();
}

class _PostNewButtonWidgetState extends State<PostNewButtonWidget> {
    TextEditingController des = TextEditingController();
    
  @override
  Widget build(BuildContext context) {
    return Column(
                 children: [
                   GestureDetector(
                                 onTap: () async {
                  //  await FireStore.AddPost(widget.username!, widget.userimage!, url!,
                  //       des.text, "3:30pm");
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
                      //  PostNewButtonWidget(username: username, userimage: userimage, url: url)        
                 ],

            
    );
    
    
  }
}