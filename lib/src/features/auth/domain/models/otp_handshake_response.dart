import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_handshake_response.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class OtpHandshakeResponse {
  @HiveField(0)
  final String token;
  @HiveField(1)
  final int typeOfUser;

  OtpHandshakeResponse({
    required this.token,
    required this.typeOfUser,
  });
  
  factory OtpHandshakeResponse.fromJson(Map<String,dynamic>json) => _$OtpHandshakeResponseFromJson(json);

  Map<String, dynamic> toJson()=> _$OtpHandshakeResponseToJson(this);
}
