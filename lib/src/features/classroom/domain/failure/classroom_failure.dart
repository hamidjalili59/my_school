// ignore_for_file: depend_on_referenced_packages
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/failures/failure.dart';

part 'classroom_failure.freezed.dart';

@freezed
class ClassroomFailure extends Failure with _$ClassroomFailure {
  ///
  const factory ClassroomFailure.missingToken() = _MissingToken;

  ///
  const factory ClassroomFailure.api(DioError failure) = _Api;
  const factory ClassroomFailure.nullParam() = _NullParam;
  const factory ClassroomFailure.database(DatabaseError failure) = _Database;
}
