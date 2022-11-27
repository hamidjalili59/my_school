import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_service_header.freezed.dart';

@freezed
abstract class ApiServiceHeader with _$ApiServiceHeader {
  const factory ApiServiceHeader.formData({Map<String, String>? headers}) =
      _FormData;

  const factory ApiServiceHeader.basic({Map<String, String>? headers}) = Basic;

  const factory ApiServiceHeader.data({Map<String, String>? headers}) = _Data;
}

extension ApiServiceHeaderEx on ApiServiceHeader {
  Map<String, String> get toMap {
    Map<String, String>? headers = when(
        formData: (headers) => headers,
        basic: (headers) => headers,
        data: (headers) => headers);
    Map<String, String> map = {
      'accept': 'application/json',
      'content-type': when(
        formData: (headers) => 'multipart/form-data; boundary=something',
        basic: (headers) => 'application/json; charset=utf-8',
        data: (headers) => 'application/json; charset=utf-8',
      ),
    };
    if (headers != null && headers.isNotEmpty) map.addAll(headers);
    return map;
  }
}
