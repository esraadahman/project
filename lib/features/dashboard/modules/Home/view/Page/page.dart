import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/core/utils/models_for_story_and_post/story_model.dart';
import 'package:task_flutter/core/utils/widgets_for_Story_and_posts/story_widget.dart';
import 'package:task_flutter/features/auth/registration/view/component/button_widget.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/component/Circular_Avatar_And_UserName.dart';
import 'package:task_flutter/features/dashboard/modules/Home/cubit/home_cubit.dart';
import 'package:task_flutter/features/dashboard/modules/Home/view/component/button_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return  SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
            height: 60,
          ),
          HomeAvatar(),
             SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            child: Container(
                height: 120,
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Stories')
                      .snapshots(),
                  builder: (context, snap) {
                    if (snap.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snap.data!.docs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: StoryWidget(
                              story: Story(
                                userName: snap.data!.docs[index]['username'],
                                userImage: snap.data!.docs[index]['userimage'],
                                storyImage: snap.data!.docs[index]
                                    ['storyimage'],
                                date: '20-3-2024',
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                )),
          ),
          const SizedBox(height: 40,),
         AddButtonsWidget(),

              ],
            ),
            


          );
        },
      ),
    );
  }
}
