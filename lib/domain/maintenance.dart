import 'package:json_annotation/json_annotation.dart';

part 'maintenance.g.dart';

@JsonSerializable()
class Maintenance{
  @JsonKey(name: "maintenanceId")
  int maintenanceId;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "itemId")
  String itemId;
  @JsonKey(name: "cycle")
  String cycle;
  @JsonKey(name: "periodType")
  String periodType;
  @JsonKey(name: "regDate")
  String regDate;


  Maintenance(this.maintenanceId, this.description, this.itemId, this.cycle,
      this.periodType, this.regDate);

  factory Maintenance.fromJson(Map<String, dynamic> json) => _$MaintenanceFromJson(json);
  Map<String, dynamic> toJson() => _$MaintenanceToJson(this);

}

@JsonSerializable()
class Maintenances{
  @JsonKey(name: "maintenances")
  List<Maintenance> maintenances;
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "totalResults")
  int totalResults;
  @JsonKey(name: "totalPages")
  int totalPages;
  @JsonKey(name: "errors")
  List<String> errors;

  Maintenances(this.items, this.page, this.totalResults, this.totalPages, this.errors);

  bool get isEmpty => !hasMaintenances();

  bool hasMaintenances(){
    return items != null && items.length > 0;
  }

  bool hasErrors(){
    return errors != null && errors.length > 0;
  }

  factory Maintenances.fromJson(Map<String, dynamic> json) => _$MaintenancesFromJson(json);
  Map<String, dynamic> toJson() => _$MaintenancesToJson(this);

}