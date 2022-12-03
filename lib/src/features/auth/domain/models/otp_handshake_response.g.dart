// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_handshake_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OtpHandshakeResponseAdapter extends TypeAdapter<OtpHandshakeResponse> {
  @override
  final int typeId = 0;

  @override
  OtpHandshakeResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OtpHandshakeResponse(
      token: fields[0] as String,
      typeOfUser: fields[1] as int,
      phoneNumber: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, OtpHandshakeResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.typeOfUser)
      ..writeByte(2)
      ..write(obj.phoneNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtpHandshakeResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpHandshakeResponse _$OtpHandshakeResponseFromJson(
        Map<String, dynamic> json) =>
    OtpHandshakeResponse(
      token: json['token'] as String,
      typeOfUser: json['typeOfUser'] as int,
      phoneNumber: (json['phoneNumber'] as num).toDouble(),
    );

Map<String, dynamic> _$OtpHandshakeResponseToJson(
        OtpHandshakeResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'typeOfUser': instance.typeOfUser,
      'phoneNumber': instance.phoneNumber,
    };
