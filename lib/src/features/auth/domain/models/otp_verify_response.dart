import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_response.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class OtpVerifyResponse {
  @HiveField(0)
  final double phoneNumber;
  @HiveField(1)
  final String jwt;

  OtpVerifyResponse({
    required this.phoneNumber,
    required this.jwt,
  });
  
  factory OtpVerifyResponse.fromJson(Map<String,dynamic>json) => _$OtpVerifyResponseFromJson(json);

  Map<String, dynamic> toJson()=> _$OtpVerifyResponseToJson(this);
}
