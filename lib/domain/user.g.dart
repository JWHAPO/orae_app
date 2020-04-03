// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['userId'] as int,
    json['type'] as String,
    json['id'] as String,
    json['password'] as String,
    json['name'] as String,
    json['tel'] as String,
    json['isUse'] as String,
    json['isAlarm'] as String,
    json['zipCode'] as String,
    json['addrMain'] as String,
    json['addrSub'] as String,
    json['email'] as String,
    json['birthday'] as String,
    json['gender'] as String,
    json['profileUrl'] as String,
    json['token'] as String,
    json['refreshToken'] as String,
    json['pushToken'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userId': instance.userId,
      'type': instance.type,
      'id': instance.id,
      'password': instance.password,
      'name': instance.name,
      'tel': instance.tel,
      'isUse': instance.isUse,
      'isAlarm': instance.isAlarm,
      'zipCode': instance.zipCode,
      'addrMain': instance.addrMain,
      'addrSub': instance.addrSub,
      'email': instance.email,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'profileUrl': instance.profileUrl,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'pushToken': instance.pushToken,
    };

Users _$UsersFromJson(Map<String, dynamic> json) {
  return Users(
    (json['users'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['page'] as int,
    json['totalResults'] as int,
    json['totalPages'] as int,
    (json['errors'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'users': instance.users,
      'page': instance.page,
      'totalResults': instance.totalResults,
      'totalPages': instance.totalPages,
      'errors': instance.errors,
    };
