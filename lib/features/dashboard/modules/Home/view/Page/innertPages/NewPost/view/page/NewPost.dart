
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path/path.dart';
import 'package:task_flutter/core/utils/image_picker.dart';
import 'package:task_flutter/core/repo/firebase.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/Page/innertPages/NewPost/cubit/new_post_cubit.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/Page/innertPages/NewPost/view/component/PostNewButtonWidget.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/Page/innertPages/NewPost/view/component/dialog_Widget.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/Page/innertPages/commonAvatar_and_user_name.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';

class NewPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewPostCubit(),
      child: BlocBuilder<NewPostCubit, NewPostState>(
        builder: (context, state) {
          NewPostCubit controller = context.read<NewPostCubit>();
          return Scaffold(
            body: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const CommonAvatarWidget(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    // controller: des,
                    decoration: InputDecoration(hintText: "Caption"),
                  ),
                ),
                 //Image Section
               controller.file !=null
                     ? Container(
                        width: MediaQuery.of(context).size.width,
                         height: 350,
                         decoration: BoxDecoration(
                             image: DecorationImage(
                                 image: FileImage(controller.file!), fit: BoxFit.cover)),
                       )
                    :
                GestureDetector(
                  onTap:
                   () {
                    // showDialog(context: context, builder: (_)=>Dialog(child: UploadImageDialog(uploadImage: (bool fromGallery)=> controller.UploadImage(fromGallery),),));
                    showModalBottomSheet(context: context, builder: (_)=> UploadImageDialog(uploadImage: (bool fromGallery)=> controller.UploadImage(fromGallery),));
                  //  SmartDialog.show(builder: (context) {
                  
                  //       return  upload_way();
                  //   });
                  },
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
                      child: const Column(
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
                const SizedBox(
                  height: 50,
                ),
                // PostNewButtonWidget(username: user,)
              ],
            ),
          );
        },
      ),
    );
  }
}
