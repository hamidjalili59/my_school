// ignore_for_file: depend_on_referenced_packages
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/failures/failure.dart';

part 'teacher_failure.freezed.dart';

@freezed
class TeacherFailure extends Failure with _$TeacherFailure {
  ///
  const factory TeacherFailure.missingToken() = _MissingToken;

  ///
  const factory TeacherFailure.api(DioError failure) = _Api;
  const factory TeacherFailure.nullParam() = _NullParam;
  const factory TeacherFailure.database(DatabaseError failure) = _Database;
}
