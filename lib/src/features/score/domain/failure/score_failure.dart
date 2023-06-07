// ignore_for_file: depend_on_referenced_packages
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/failures/failure.dart';

part 'score_failure.freezed.dart';

@freezed
class ScoreFailure extends Failure with _$ScoreFailure {
  ///
  const factory ScoreFailure.missingToken() = _MissingToken;

  ///
  const factory ScoreFailure.api(DioException failure) = _Api;
  const factory ScoreFailure.nullParam() = _NullParam;
  const factory ScoreFailure.database(DatabaseError failure) = _Database;
}
