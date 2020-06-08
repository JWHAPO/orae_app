import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable()
class Task{
  @JsonKey(name: "taskId")
  int taskId;
  @JsonKey(name: "maintenanceId")
  int maintenanceId;
  @JsonKey(name: "seq")
  int seq;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "cycle")
  int cycle;
  @JsonKey(name: "periodType")
  String periodType;
  @JsonKey(name: "photos")
  List<String> photos;
  @JsonKey(name: "regDate")
  String regDate;


  Task(this.taskId, this.maintenanceId, this.seq, this.description, this.cycle,
      this.periodType, this.photos, this.regDate);

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);

}

@JsonSerializable()
class Tasks{
  @JsonKey(name: "tasks")
  List<Task> tasks;
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "totalResults")
  int totalResults;
  @JsonKey(name: "totalPages")
  int totalPages;
  @JsonKey(name: "errors")
  List<String> errors;

  Tasks(this.tasks, this.page, this.totalResults, this.totalPages, this.errors);

  bool get isEmpty => !hasTasks();

  bool hasTasks(){
    return tasks != null && tasks.length > 0;
  }

  bool hasErrors(){
    return errors != null && errors.length > 0;
  }

  factory Tasks.fromJson(Map<String, dynamic> json) => _$TasksFromJson(json);
  Map<String, dynamic> toJson() => _$TasksToJson(this);

}