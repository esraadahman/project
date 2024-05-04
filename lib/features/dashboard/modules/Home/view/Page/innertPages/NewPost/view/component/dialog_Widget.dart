import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_flutter/core/utils/Themes/AppColors.dart';

class UploadImageDialog extends StatelessWidget {
  const UploadImageDialog({super.key, required this.uploadImage});
  final  Future<void> Function (bool frongallery) uploadImage;

  @override
  Widget build(BuildContext context) {
     return Container(
      width: 215,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        border: Border.all(
          color: AppColors.tertiaryColor,
          width: 2,
        ),
      ),
      child: Center(
          child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () async {
              await uploadImage.call(true);
            },
            child: Container(
              height: 80,
              width: 90,
              decoration: BoxDecoration(
                color: AppColors.tertiaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Icon(Icons.image, size: 40, color: AppColors.backgroundColor),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Add from gallery',
                    style: TextStyle(
                        color: AppColors.backgroundColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () async {
              await uploadImage(false);
            },
            child: Container(
              height: 80,
              width: 90,
              decoration: BoxDecoration(
                color: AppColors.tertiaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Icon(Icons.camera,
                      size: 40, color: AppColors.backgroundColor),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Add from Camera',
                    style: TextStyle(
                        color: AppColors.backgroundColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}