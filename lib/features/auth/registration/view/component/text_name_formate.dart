import 'package:flutter/services.dart';

 class MyageTextFiledFormate extends TextInputFormatter{
   @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
     int age = int.parse(newValue.text)  ;
     return age>28 ? oldValue :newValue;
  }
}