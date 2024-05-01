class Vaildation {
  String? nameVaild(String? input) {
    if ((input?.toLowerCase().startsWith("a") ?? false) &&
        (input?.length ?? 0) > 4) {
      return null;
    }
    return "invaild name";
  }

  String? emailVaild(String? input) {
    RegExp emailRegex = RegExp(r'^[a-zA-Z0-9]*@+gmail|yaho.com');
    if ((emailRegex.hasMatch(input!)) && (input?.length ?? 0) > 12) {
      return null;
    }
    return "invaild Email";
  }

  // String ?Age(String? age){
  //   var myInt = int.parse('$age');
  //    if(myInt <18){
  //    return null;
  //    }
  //    return "You should be 18 or older";
  // }

  String? passwordVaild(String? input) {
    RegExp pass = RegExp(r'^[a-zA-Z0-9]{14}$');
    if ((pass.hasMatch(input!))) {
      return null;
    }
    return "invaild PassWord";
  }

  String? CodeVaild(String? input) {
    RegExp pass = RegExp(r'^[0-9]{1,}$');
    if ((pass.hasMatch(input!))) {
      return null;
    }
    return "invaild";
  }
}
