import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(VerificationInitial());

  TextEditingController pinCodeController =TextEditingController();
  String validCode='22222';

  void onTapConfirm() {
 if(pinCodeController.text == validCode){
  print('valid');
 }else{
  print('invalid');
 }
  }
}
