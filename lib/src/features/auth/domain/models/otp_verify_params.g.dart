// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_params.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OtpVerifyParamsAdapter extends TypeAdapter<OtpVerifyParams> {
  @override
  final int typeId = 1;

  @override
  OtpVerifyParams read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OtpVerifyParams(
      code: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OtpVerifyParams obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtpVerifyParamsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerifyParams _$OtpVerifyParamsFromJson(Map<String, dynamic> json) =>
    OtpVerifyParams(
      code: json['code'] as String,
    );

Map<String, dynamic> _$OtpVerifyParamsToJson(OtpVerifyParams instance) =>
    <String, dynamic>{
      'code': instance.code,
    };
