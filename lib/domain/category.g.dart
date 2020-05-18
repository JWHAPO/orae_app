// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    json['categoryId'] as int,
    json['parentCategoryId'] as String,
    json['name'] as String,
    json['description'] as String,
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'categoryId': instance.categoryId,
      'parentCategoryId': instance.parentCategoryId,
      'name': instance.name,
      'description': instance.description,
    };

Categorys _$CategorysFromJson(Map<String, dynamic> json) {
  return Categorys(
    (json['categories'] as List)
        ?.map((e) =>
            e == null ? null : Category.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['page'] as int,
    json['totalResults'] as int,
    json['totalPages'] as int,
    (json['errors'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$CategorysToJson(Categorys instance) => <String, dynamic>{
      'categories': instance.categories,
      'page': instance.page,
      'totalResults': instance.totalResults,
      'totalPages': instance.totalPages,
      'errors': instance.errors,
    };
