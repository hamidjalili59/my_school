import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_service_response_type.freezed.dart';

@freezed
class ApiServiceResponseType with _$ApiServiceResponseType {
  const factory ApiServiceResponseType.json() = _Json;

  const factory ApiServiceResponseType.stream() = _Stream;

  const factory ApiServiceResponseType.plain() = _Plain;

  const factory ApiServiceResponseType.bytes() = _Bytes;
}

extension ApiServiceResponseTypeEx on ApiServiceResponseType {
  ResponseType get toDio => when(
        json: () => ResponseType.json,
        stream: () => ResponseType.stream,
        plain: () => ResponseType.plain,
        bytes: () => ResponseType.bytes,
      );
}
