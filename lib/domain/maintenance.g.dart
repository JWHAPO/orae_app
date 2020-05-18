// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Maintenance _$MaintenanceFromJson(Map<String, dynamic> json) {
  return Maintenance(
    json['maintenanceId'] as int,
    json['description'] as String,
    json['itemId'] as String,
    json['cycle'] as String,
    json['periodType'] as String,
    json['regDate'] as String,
  );
}

Map<String, dynamic> _$MaintenanceToJson(Maintenance instance) =>
    <String, dynamic>{
      'maintenanceId': instance.maintenanceId,
      'description': instance.description,
      'itemId': instance.itemId,
      'cycle': instance.cycle,
      'periodType': instance.periodType,
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
