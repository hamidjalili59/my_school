import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/score/domain/models/score_model.dart';

part 'score_get_response.g.dart';

@HiveType(typeId: 25)
@JsonSerializable()
class ScoreGetResponse {
  @HiveField(0)
  @JsonKey(name: 'Scores')
  final List<Score> scores;

  ScoreGetResponse({required this.scores});

  factory ScoreGetResponse.fromJson(Map<String, dynamic> json) =>
      _$ScoreGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ScoreGetResponseToJson(this);
}
