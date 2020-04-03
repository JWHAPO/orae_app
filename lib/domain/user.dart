import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User{
  @JsonKey(name: "userId")
  int userId;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "password")
  String password;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "tel")
  String tel;
  @JsonKey(name: "isUse")
  String isUse;
  @JsonKey(name: "isAlarm")
  String isAlarm;
  @JsonKey(name: "zipCode")
  String zipCode;
  @JsonKey(name: "addrMain")
  String addrMain;
  @JsonKey(name: "addrSub")
  String addrSub;
  @JsonKey(name: "email")
  String email;
  @JsonKey(name: "birthday")
  String birthday;
  @JsonKey(name: "gender")
  String gender;
  @JsonKey(name: "profileUrl")
  String profileUrl;
  @JsonKey(name: "token")
  String token;
  @JsonKey(name: "refreshToken")
  String refreshToken;
  @JsonKey(name: "pushToken")
  String pushToken;

  User(this.userId, this.type, this.id, this.password, this.name, this.tel,
      this.isUse, this.isAlarm, this.zipCode, this.addrMain, this.addrSub,
      this.email, this.birthday, this.gender, this.profileUrl, this.token,
      this.refreshToken, this.pushToken);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

}

@JsonSerializable()
class Users{
  @JsonKey(name: "users")
  List<User> users;
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "totalResults")
  int totalResults;
  @JsonKey(name: "totalPages")
  int totalPages;
  @JsonKey(name: "errors")
  List<String> errors;

  Users(this.users, this.page, this.totalResults, this.totalPages, this.errors);

  bool get isEmpty => !hasUsers();

  bool hasUsers(){
    return users != null && users.length > 0;
  }

  bool hasErrors(){
    return errors != null && errors.length > 0;
  }

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);

}