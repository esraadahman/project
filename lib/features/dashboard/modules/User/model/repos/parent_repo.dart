import 'package:task_flutter/features/dashboard/modules/User/model/user_model.dart';

abstract class ParentRepo {

  Future<List<UserModel>> fetch();
  Future<void> delete({required int id});
}