import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:task_flutter/core/utils/models_for_story_and_post/post_model.dart';
import 'package:task_flutter/core/utils/models_for_story_and_post/story_model.dart';

import 'package:firebase_auth/firebase_auth.dart';


class FireStore {
  static final auth = FirebaseAuth.instance;

  static Future<void> AddUserInfotest(
      String first,
      String username,
      String userimage,
     String last,String age,
      List<Post> posts,
      List<Story> stories) async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(auth.currentUser!.uid)
        .set({
      'first': first,
      'username': username,
     'last':last,
      'userimage': userimage,
    'age':age,
      'posts': posts,
      'story': stories,
    });
  }

  static Future<void> AddStory(
      String username, String userimage, String storyimage, String date) async {
    await FirebaseFirestore.instance.collection('Stories').add({
      'username': username,
      'userimage': userimage,
      'storyimage': storyimage,
      'date': date,
      'userid': auth.currentUser!.uid,
    });
  }

  static Future<void> AddPost(String username, String userimage,
      String postimage, String des, String date) async {
    await FirebaseFirestore.instance.collection('Posts').add({
      'username': username,
      'userimage': userimage,
      'postimage': postimage,
      'des': des,
      'date': date,
      'userid': auth.currentUser!.uid,
    });
  }

  static Future<void> AddSavedList(String username, String userimage,
      String postimage, String date, String des) async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(auth.currentUser!.uid)
        .collection("saved_list")
        .add({
      'username': username,
      'userimage': userimage,
      'postimage': postimage,
      'date': date,
      'des': des,
    });
  }
}
