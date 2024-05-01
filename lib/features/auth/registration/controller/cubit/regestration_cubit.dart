import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'regestration_state.dart';

class RegestrationCubit extends Cubit<RegestrationState> {
  RegestrationCubit() : super(RegestrationInitial());

    TextEditingController first = TextEditingController();
    TextEditingController last=TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController pass=TextEditingController();
    TextEditingController age=TextEditingController();

    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    void onPressedConfirmButton(BuildContext context){
      if (formkey.currentState!.validate()){
        Navigator.pushNamed(context, 'Login');
      }
    }
}
