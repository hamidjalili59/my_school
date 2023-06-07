// ignore_for_file: depend_on_referenced_packages
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/failures/failure.dart';

part 'mediator_failure.freezed.dart';

@freezed
class MediatorFailure extends Failure with _$MediatorFailure {
  ///
  const factory MediatorFailure.missingToken() = _MissingToken;

  ///
  const factory MediatorFailure.api(DioException failure) = _Api;
  const factory MediatorFailure.nullParam() = _NullParam;
  const factory MediatorFailure.database(DatabaseError failure) = _Database;
}
