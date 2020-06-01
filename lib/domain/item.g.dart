// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
    json['itemId'] as int,
    json['name'] as String,
    json['description'] as String,
    json['modelNo'] as String,
    json['maker'] as String,
    json['mainImage'] as String,
    (json['images'] as List)?.map((e) => e as String)?.toList(),
    json['averageExpectancy'] as String,
    json['regDate'] as String,
  );
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'description': instance.description,
      'modelNo': instance.modelNo,
      'maker': instance.maker,
      'mainImage': instance.mainImage,
      'images': instance.images,
      'averageExpectancy': instance.averageExpectancy,
      'regDate': instance.regDate,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return Items(
    (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['page'] as int,
    json['totalResults'] as int,
    json['totalPages'] as int,
    (json['errors'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'totalResults': instance.totalResults,
      'totalPages': instance.totalPages,
      'errors': instance.errors,
    };
