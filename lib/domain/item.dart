import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item{
  @JsonKey(name: "itemId")
  int itemId;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "modelNo")
  String modelNo;
  @JsonKey(name: "maker")
  String maker;
  @JsonKey(name: "mainImage")
  String mainImage;
  @JsonKey(name: "images")
  List<String> images;
  @JsonKey(name: "averageExpectancy")
  String averageExpectancy;
  @JsonKey(name: "regDate")
  String regDate;


  Item(this.itemId, this.name, this.description, this.modelNo, this.maker,
      this.mainImage, this.images, this.averageExpectancy, this.regDate);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);

}

@JsonSerializable()
class Items{
  @JsonKey(name: "items")
  List<Item> items;
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "totalResults")
  int totalResults;
  @JsonKey(name: "totalPages")
  int totalPages;
  @JsonKey(name: "errors")
  List<String> errors;

  Items(this.items, this.page, this.totalResults, this.totalPages, this.errors);

  bool get isEmpty => !hasItems();

  bool hasItems(){
    return items != null && items.length > 0;
  }

  bool hasErrors(){
    return errors != null && errors.length > 0;
  }

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsToJson(this);

}