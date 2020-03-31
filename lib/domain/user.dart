import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User{

  User(this.userId, this.type, this.id, this.password, this.name, this.tel,
      this.isUse, this.isAlarm, this.zipCode, this.addrMain, this.addrSub,
      this.email, this.birthday, this.gender, this.profileUrl, this.token,
      this.refreshToken, this.pushToken);

  int userId;
  String type;
  String id;
  String password;
  String name;
  String tel;
  String isUse;
  String isAlarm;
  String zipCode;
  String addrMain;
  String addrSub;
  String email;
  String birthday;
  String gender;
  String profileUrl;
  String token;
  String refreshToken;
  String pushToken;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

}

@JsonSerializable()
class Users{
  List<User> users;

  Users(this.users);

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);

}