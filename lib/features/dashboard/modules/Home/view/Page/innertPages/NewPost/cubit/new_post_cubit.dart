
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:task_flutter/core/repo/firebase.dart';


part 'new_post_state.dart';

class NewPostCubit extends Cubit<NewPostState> {
  NewPostCubit() : super(NewPostInitial());
  File? file;
    TextEditingController desController = TextEditingController();
   Future<void> UploadImage(bool fromGallery) async {
    
    ImagePicker picker = ImagePicker();
    
    XFile? image = await picker.pickImage(source: fromGallery?ImageSource.gallery: ImageSource.camera);
    if (image != null) {
      file = File(image.path);
      String imageName = file!.path.split("/").last;
      var ref = FirebaseStorage.instance.ref("Posts/$imageName");
      await ref.putFile(file!);
     String url = await ref.getDownloadURL();
      FireStore.AddPost(
          "Mariam",
          "https://img.freepik.com/free-photo/abstract-watercolor-guitar-exploding-with-colorful-motion-generated-by-ai_188544-19725.jpg?size=626&ext=jpg&ga=GA1.1.1454705726.1706974768&semt=ais",
          url,
          "Hi",
          "3:30pm");
    }
    emit(NewPostInitial());
  }






}
