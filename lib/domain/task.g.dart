// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) {
  return Task(
    json['taskId'] as int,
    json['maintenanceId'] as int,
    json['seq'] as int,
    json['description'] as String,
    json['cycle'] as int,
    json['periodType'] as String,
    (json['photos'] as List)?.map((e) => e as String)?.toList(),
    json['regDate'] as String,
  );
}

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'taskId': instance.taskId,
      'maintenanceId': instance.maintenanceId,
      'seq': instance.seq,
      'description': instance.description,
      'cycle': instance.cycle,
      'periodType': instance.periodType,
      'photos': instance.photos,
      'regDate': instance.regDate,
    };

Tasks _$TasksFromJson(Map<String, dynamic> json) {
  return Tasks(
    (json['tasks'] as List)
        ?.map(
            (e) => e == null ? null : Task.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['page'] as int,
    json['totalResults'] as int,
    json['totalPages'] as int,
    (json['errors'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$TasksToJson(Tasks instance) => <String, dynamic>{
      'tasks': instance.tasks,
      'page': instance.page,
      'totalResults': instance.totalResults,
      'totalPages': instance.totalPages,
      'errors': instance.errors,
    };
