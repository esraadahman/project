import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
final auth = FirebaseAuth.instance;
  String? first = "";
  String? last = "";
  String? username = "";
  String? userimage = "";
  String? age = "";


  Future<void> GetUserInfo() async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(auth.currentUser!.uid)
        .get()
        .then((snapshot) {
      if (snapshot.exists) {
        first = snapshot.data()!['first'];
         last = snapshot.data()!['last'];
          username = snapshot.data()!['username'];
          userimage = snapshot.data()!['userimage'];
           age = snapshot.data()!['age'];
         
      } else {
        print('No data');
      }
    });
  }
}
