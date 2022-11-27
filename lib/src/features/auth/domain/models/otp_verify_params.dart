import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_params.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class OtpVerifyParams {
  @HiveField(0)
  final String code;

  OtpVerifyParams({required this.code});
  
  factory OtpVerifyParams.fromJson(Map<String,dynamic>json) => _$OtpVerifyParamsFromJson(json);

  Map<String, dynamic> toJson()=> _$OtpVerifyParamsToJson(this);
}
