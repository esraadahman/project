// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path/path.dart';
// import 'package:task_flutter/core/utils/Themes/AppColors.dart';
// import 'package:task_flutter/features/dashboard/modules/Home/model/repos/firebase.dart';

// class MyImagePicker extends StatefulWidget {
//   const MyImagePicker({super.key});

//   @override
//   State<MyImagePicker> createState() => _MyImagePickerState();
  
// }

// class _MyImagePickerState extends State<MyImagePicker> {
//   bool getimage = false;
//   File? file;
//   String? url;
//   TextEditingController des = TextEditingController();

//   UploadImage() async {
//     ImagePicker picker = ImagePicker();
//     XFile? image = await picker.pickImage(source: ImageSource.camera);
//     if (image != null) {
//       setState(() {
//         file = File(image.path);
//         getimage = true;
//       });

//       var imgname = basename(image.path);
//       var ref = FirebaseStorage.instance.ref("Posts/$imgname");
//       await ref.putFile(file!);
//       url = await ref.getDownloadURL();
//       FireStore.AddPost(
//           "Mariam",
//           "https://img.freepik.com/free-photo/abstract-watercolor-guitar-exploding-with-colorful-motion-generated-by-ai_188544-19725.jpg?size=626&ext=jpg&ga=GA1.1.1454705726.1706974768&semt=ais",
//           url!,
//           "Hi",
//           "3:30pm");
//     }
//   }

//   UploadImage_camera() async {
//     ImagePicker picker = ImagePicker();
//     XFile? image = await picker.pickImage(source: ImageSource.camera);

//     if (image != null) {
//       setState(() {
//         file = File(image.path);
//         getimage = true;
//       });

//       var metadata = SettableMetadata(
//         contentType: "image/jpeg",
//       );
//       var imgname = basename(image.path);
//       var ref = FirebaseStorage.instance.ref(imgname);
//       await ref.putFile(file!, metadata);

//       url = await ref.getDownloadURL();
//     }
//   }

//   UploadImage_gallery() async {
//     ImagePicker picker = ImagePicker();
//     XFile? image = await picker.pickImage(source: ImageSource.gallery);

//     if (image != null) {
//       setState(() {
//         file = File(image.path);
//         getimage = true;
//       });

//       var metadata = SettableMetadata(
//         contentType: "image/jpeg",
//       );
//       var imgname = basename(image.path);
//       var ref = FirebaseStorage.instance.ref(imgname);
//       await ref.putFile(file!, metadata);

//       url = await ref.getDownloadURL();
//     }
//   }

//   Widget upload_way() {
//     return Container(
//       width: 215,
//       height: 150,
//       decoration: BoxDecoration(
//         color: AppColors.backgroundColor,
//         border: Border.all(
//           color: AppColors.tertiaryColor,
//           width: 2,
//         ),
//       ),
//       child: Center(
//           child: Row(
//         children: [
//           SizedBox(
//             width: 10,
//           ),
//           GestureDetector(
//             onTap: () async {
//               await UploadImage_gallery();
//             },
//             child: Container(
//               height: 80,
//               width: 90,
//               decoration: BoxDecoration(
//                 color: AppColors.tertiaryColor,
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Icon(Icons.image, size: 40, color: AppColors.backgroundColor),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     'Add from gallery',
//                     style: TextStyle(
//                         color: AppColors.backgroundColor,
//                         fontSize: 10,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           GestureDetector(
//             onTap: () async {
//               await UploadImage_camera();
//             },
//             child: Container(
//               height: 80,
//               width: 90,
//               decoration: BoxDecoration(
//                 color: AppColors.tertiaryColor,
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Icon(Icons.camera,
//                       size: 40, color: AppColors.backgroundColor),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     'Add from Camera',
//                     style: TextStyle(
//                         color: AppColors.backgroundColor,
//                         fontSize: 10,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       )),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }