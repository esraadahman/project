class UserModel {
  String? id;
  String?first_name;
  String? last_name;
  String ?email;
 

  UserModel({this.id, this.first_name, this.last_name,this.email});

  UserModel.fromJson(Map map) {
    id = map['id'].toString();
    first_name = map['first_name'];
    last_name = map['last_name'];
    email =map['email'];
  }
}