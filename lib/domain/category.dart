import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category{
  @JsonKey(name: "categoryId")
  int categoryId;
  @JsonKey(name: "parentCategoryId")
  String parentCategoryId;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "description")
  String description;


  Category(this.categoryId, this.parentCategoryId, this.name, this.description);

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);

}

@JsonSerializable()
class Categorys{
  @JsonKey(name: "categories")
  List<Category> categories;
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "totalResults")
  int totalResults;
  @JsonKey(name: "totalPages")
  int totalPages;
  @JsonKey(name: "errors")
  List<String> errors;

  Categorys(this.categories, this.page, this.totalResults, this.totalPages, this.errors);

  bool get isEmpty => !hasCategorys();

  bool hasCategorys(){
    return categories != null && categories.length > 0;
  }

  bool hasErrors(){
    return errors != null && errors.length > 0;
  }

  factory Categorys.fromJson(Map<String, dynamic> json) => _$CategorysFromJson(json);
  Map<String, dynamic> toJson() => _$CategorysToJson(this);

}