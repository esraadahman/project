import 'package:flutter/cupertino.dart';

extension MyContextExtention on BuildContext
{
  double get width => MediaQuery.of(this).size.width;
  double get hight => MediaQuery.of(this).size.height;
  
}