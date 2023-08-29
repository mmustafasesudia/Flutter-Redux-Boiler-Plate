import 'package:json_annotation/json_annotation.dart';

part 'example_model.g.dart';

// "userId": 1,
// "id": 1,
// "title": "delectus aut autem",
// "completed": false

@JsonSerializable()
class ExampleModel {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  ExampleModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });

  factory ExampleModel.fromJson(Map<String, dynamic> json) =>
      _$ExampleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExampleModelToJson(this);
}
