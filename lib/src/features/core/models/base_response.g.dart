// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BaseResponseAdapter extends TypeAdapter<BaseResponse> {
  @override
  final int typeId = 6;

  @override
  BaseResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BaseResponse(
      payload: (fields[0] as Map).cast<String, dynamic>(),
      message: fields[1] as String,
      statusCode: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BaseResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.payload)
      ..writeByte(1)
      ..write(obj.message)
      ..writeByte(2)
      ..write(obj.statusCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      payload: json['payLoad'] as Map<String, dynamic>,
      message: json['message'] as String,
      statusCode: json['code'] as int,
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'payLoad': instance.payload,
      'message': instance.message,
      'code': instance.statusCode,
    };
