import 'package:flutter/material.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/Page/innertPages/NewPost/view/component/PostNewButtonWidget.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/Page/innertPages/commonAvatar_and_user_name.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';
class NewPostPage extends StatefulWidget {
  const NewPostPage({super.key});

  @override
  State<NewPostPage> createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        SizedBox(height: 50,),
        CommonAvatarWidget(),
                  Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                // controller: des,
                decoration: InputDecoration(hintText: "Caption"),
              ),
            ),
            // Image Section
            // getimage
            //     ? Container(
            //         width: MediaQuery.of(context).size.width,
            //         height: 350.h,
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: FileImage(file!), fit: BoxFit.cover)),
            //       )
            //     :
                GestureDetector(
                    // onTap: () {
                    //   setState(() {
                    //     SmartDialog.show(builder: (context) {
                    //       return upload_way();
                    //     });
                    //   });
                    // },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.tertiaryColor,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Icon(
                              Icons.image,
                              size: 40,
                              color: AppColors.tertiaryColor,
                            ),
                            Text(
                              "Add Photo",
                              style: TextStyle(
                                  color: AppColors.tertiaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 50,),
          PostNewButtonWidget()
       
      ],
      ),
    );
  }
}