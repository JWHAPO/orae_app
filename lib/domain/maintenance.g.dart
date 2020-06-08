// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Maintenance _$MaintenanceFromJson(Map<String, dynamic> json) {
  return Maintenance(
    json['maintenanceId'] as int,
    json['title'] as String,
    json['description'] as String,
    json['itemId'] as int,
    json['userId'] as int,
    json['userName'] as String,
    json['userProfile'] as String,
    (json['tasks'] as List)
        ?.map(
            (e) => e == null ? null : Task.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['avgPeriodDays'] as int,
    json['usedCount'] as int,
    json['regDate'] as String,
  );
}

Map<String, dynamic> _$MaintenanceToJson(Maintenance instance) =>
    <String, dynamic>{
      'maintenanceId': instance.maintenanceId,
      'title': instance.title,
      'description': instance.description,
      'itemId': instance.itemId,
      'userId': instance.userId,
      'userName': instance.userName,
      'userProfile': instance.userProfile,
      'tasks': instance.tasks,
      'avgPeriodDays': instance.avgPeriodDays,
      'usedCount': instance.usedCount,
      'regDate': instance.regDate,
    };

Maintenances _$MaintenancesFromJson(Map<String, dynamic> json) {
  return Maintenances(
    (json['maintenances'] as List)
        ?.map((e) =>
            e == null ? null : Maintenance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['page'] as int,
    json['totalResults'] as int,
    json['totalPages'] as int,
    (json['errors'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$MaintenancesToJson(Maintenances instance) =>
    <String, dynamic>{
      'maintenances': instance.maintenances,
      'page': instance.page,
      'totalResults': instance.totalResults,
      'totalPages': instance.totalPages,
      'errors': instance.errors,
    };
