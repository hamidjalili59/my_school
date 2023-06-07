// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_get_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SchoolGetResponseAdapter extends TypeAdapter<SchoolGetResponse> {
  @override
  final int typeId = 19;

  @override
  SchoolGetResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SchoolGetResponse(
      classe: (fields[0] as Map).cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, SchoolGetResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.classe);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SchoolGetResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolGetResponse _$SchoolGetResponseFromJson(Map<String, dynamic> json) =>
    SchoolGetResponse(
      classe: json['classe'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SchoolGetResponseToJson(SchoolGetResponse instance) =>
    <String, dynamic>{
      'classe': instance.classe,
    };
