import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/score/domain/models/score_model.dart';

part 'score_success_response.g.dart';

@HiveType(typeId: 28)
@JsonSerializable()
class ScoreSuccessResponse {
  @HiveField(0)
  @JsonKey(name: 'Grade')
  final Score score;

  ScoreSuccessResponse({required this.score});

  factory ScoreSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$ScoreSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ScoreSuccessResponseToJson(this);
}
