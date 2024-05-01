// import 'package:image_picker/image_picker.dart';

// class ImagePicker{
//    UploadImage_camera() async {
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
// }