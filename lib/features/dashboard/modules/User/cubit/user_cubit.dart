import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_flutter/features/dashboard/modules/User/model/repos/local_db.dart';
import 'package:task_flutter/features/dashboard/modules/User/model/user_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserLoading()) {
    // init();
  }

  List<UserModel> users = [];

  Future<void> Git() async {
    emit(UserLoading());
    await (await DatabaseRepo.instance).fetch();
    // users = await FirebaseRepo.instance.fetch();
    if (users.isEmpty) {
      emit(UserEmpty());
    } else {
      emit(UserLoaded());
    }
  }
}