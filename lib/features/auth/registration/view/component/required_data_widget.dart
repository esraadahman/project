

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/core/utils/decorations_text_filed.dart';
import 'package:task_flutter/core/utils/validation.dart';
import 'package:task_flutter/features/auth/registration/controller/cubit/regestration_cubit.dart';
import 'package:task_flutter/features/auth/registration/view/component/text_name_formate.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/Page/innertPages/NewPost/cubit/new_post_cubit.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/Page/innertPages/NewPost/view/component/dialog_Widget.dart';

class RequiredDateWidget extends StatelessWidget {
  RequiredDateWidget({required this.controller });
final RegestrationCubit controller ;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegestrationCubit>.value(
      value:controller,
      child:
          BlocBuilder< RegestrationCubit,  RegestrationState>(
            builder: (context, state) {
             
              return SingleChildScrollView(
                child: Form(
                  key: controller.formkey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
              SizedBox(height: 20),
                     controller.file !=null
                ? GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: FileImage(controller.file!),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                       showModalBottomSheet(context: context, builder: (_)=> UploadImageDialog(uploadImage: (bool fromGallery)=> controller.UploadImage(fromGallery),));
                     
                        },
                   
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-photo/portrait-person-with-handwritten-text-it_23-2150734496.jpg?size=626&ext=jpg&ga=GA1.1.1056193589.1669837405&semt=ais"),
                    ),
                  ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Friend Circle  Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                  
                  
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          controller: controller.first,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.name,
                         
                          decoration: Decorations_Text_Filed.decorations
                              .copyWith(labelText: "First Name")),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          controller: controller.age,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            MyageTextFiledFormate()
                          ],
                          // validator: Vaildation().Age,
                          decoration: Decorations_Text_Filed.decorations
                              .copyWith(labelText: "Age ", prefixIcon: Icon(Icons.lock_clock))),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                          controller: controller.last,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.name,
                          // validator: Vaildation().nameVaild,
                          decoration: Decorations_Text_Filed.decorations
                              .copyWith(labelText: "Last Name")),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                          controller: controller.email,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.name,
                          validator: Vaildation().emailVaild,
                          decoration: Decorations_Text_Filed.decorations.copyWith(
                              labelText: "Email",
                              hintText: 'xxxxx@gmail.com',
                              suffixIcon: Icon(Icons.email_sharp))),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: controller.pass,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.name,
                        validator: Vaildation().passwordVaild,
                        decoration: Decorations_Text_Filed.decorations.copyWith(
                          labelText: "Password",
                          hintText: 'xxxxxx',
                          suffixIcon: Icon(Icons.lock),
                        ),
                        obscureText: true,
                        obscuringCharacter: '*',
                      )
                    ],),
                ),
              );
            } ),
    );
  }
}
