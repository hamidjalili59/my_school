import 'package:api_service/src/api_service_response_type.dart';
import 'package:dio/dio.dart';

import 'api_service_header.dart';

typedef OnPercentage = void Function(int currentBytes, int totalBytes);

class ApiServiceOption {
  const ApiServiceOption({
    this.query,
    this.onReceivePercentage,
    this.header = const ApiServiceHeader.basic(),
    this.responseType = const ApiServiceResponseType.json(),
  });

  final ApiServiceHeader header;
  final Map<String, dynamic>? query;
  final OnPercentage? onReceivePercentage;
  final ApiServiceResponseType responseType;
}

extension ApiServiceOptionEx on ApiServiceOption {
  Options get requestOptions => Options(
    responseType: responseType.toDio,
    headers: header.toMap,
  );
}
