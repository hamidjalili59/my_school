// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BasicInfoModelAdapter extends TypeAdapter<BasicInfoModel> {
  @override
  final int typeId = 7;

  @override
  BasicInfoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BasicInfoModel(
      name: fields[0] as String,
      phoneNumber: fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, BasicInfoModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.phoneNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasicInfoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicInfoModel _$BasicInfoModelFromJson(Map<String, dynamic> json) =>
    BasicInfoModel(
      name: json['name'] as String,
      phoneNumber: (json['phoneNumber'] as num).toDouble(),
    );

Map<String, dynamic> _$BasicInfoModelToJson(BasicInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
    };
