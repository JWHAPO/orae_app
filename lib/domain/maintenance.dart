import 'package:json_annotation/json_annotation.dart';
import 'package:oraeapp/domain/task.dart';

part 'maintenance.g.dart';

@JsonSerializable()
class Maintenance{
  @JsonKey(name: "maintenanceId")
  int maintenanceId;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "itemId")
  int itemId;
  @JsonKey(name: "userId")
  int userId;
  @JsonKey(name: "userName")
  String userName;
  @JsonKey(name: "userProfile")
  String userProfile;
  @JsonKey(name: "tasks")
  List<Task> tasks;
  @JsonKey(name: "avgPeriodDays")
  int avgPeriodDays;
  @JsonKey(name: "usedCount")
  int usedCount;
  @JsonKey(name: "regDate")
  String regDate;


  Maintenance(
      this.maintenanceId,
      this.title,
      this.description,
      this.itemId,
      this.userId,
      this.userName,
      this.userProfile,
      this.tasks,
      this.avgPeriodDays,
      this.usedCount,
      this.regDate);

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

  Maintenances(this.maintenances, this.page, this.totalResults, this.totalPages, this.errors);

  bool get isEmpty => !hasMaintenances();

  bool hasMaintenances(){
    return maintenances != null && maintenances.length > 0;
  }

  bool hasErrors(){
    return errors != null && errors.length > 0;
  }

  factory Maintenances.fromJson(Map<String, dynamic> json) => _$MaintenancesFromJson(json);
  Map<String, dynamic> toJson() => _$MaintenancesToJson(this);

}