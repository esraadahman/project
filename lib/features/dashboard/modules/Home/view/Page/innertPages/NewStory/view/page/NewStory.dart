import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/Page/innertPages/commonAvatar_and_user_name.dart';

class NewStory extends StatelessWidget {
  const NewStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // try {
          //   FireStore.AddStory(
          //       widget.username!, widget.userimage!, url, "2:30");
          // } catch (e) {
          //   print(e);
          // }
        },
        child: Icon(
          Icons.upload,
          color: AppColors.tertiaryColor,
        ),
        backgroundColor: AppColors.backgroundColor,
      ),
       body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CommonAvatarWidget(),
        
          SizedBox(
            height: 20,
          ),

          // enterpassword? true:false
          // enterpassword? home:reload

          // getimage
          //     ? Container(
          //         width: MediaQuery.sizeOf(context).width / 0.8,
          //         height: MediaQuery.sizeOf(context).height * 0.78,
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //             image: FileImage(file!),
          //             //    image: NetworkImage(url),
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       )
          //     : 
              GestureDetector(
                  onTap: () {
                    // setState(() {
                    //   SmartDialog.show(builder: (context) {
                    //     return upload_way();
                    //   });
                    // });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width / 0.8,
                    height: MediaQuery.sizeOf(context).height * 0.75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.tertiaryColor,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Icon(Icons.image,
                              size: 40, color: AppColors.tertiaryColor),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Add Photo',
                            style: TextStyle(
                                color: AppColors.tertiaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}