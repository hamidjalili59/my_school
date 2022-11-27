// ignore_for_file: depend_on_referenced_packages
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/failures/failure.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure extends Failure with _$AuthFailure {
  ///
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.missingToken() = _MissingToken;

  ///
  const factory AuthFailure.api(DioError failure) = _Api;
  const factory AuthFailure.nullParam() = _NullParam;
  const factory AuthFailure.database(DatabaseError failure) = _Database;
}
