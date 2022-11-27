// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OtpVerifyResponseAdapter extends TypeAdapter<OtpVerifyResponse> {
  @override
  final int typeId = 2;

  @override
  OtpVerifyResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OtpVerifyResponse(
      phoneNumber: fields[0] as double,
      jwt: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OtpVerifyResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.phoneNumber)
      ..writeByte(1)
      ..write(obj.jwt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtpVerifyResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerifyResponse _$OtpVerifyResponseFromJson(Map<String, dynamic> json) =>
    OtpVerifyResponse(
      phoneNumber: (json['phoneNumber'] as num).toDouble(),
      jwt: json['jwt'] as String,
    );

Map<String, dynamic> _$OtpVerifyResponseToJson(OtpVerifyResponse instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'jwt': instance.jwt,
    };
