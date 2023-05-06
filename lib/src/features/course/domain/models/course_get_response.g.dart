// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_get_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CourseGetResponseAdapter extends TypeAdapter<CourseGetResponse> {
  @override
  final int typeId = 10;

  @override
  CourseGetResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CourseGetResponse(
      courses: (fields[0] as List).cast<Course>(),
    );
  }

  @override
  void write(BinaryWriter writer, CourseGetResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.courses);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseGetResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseGetResponse _$CourseGetResponseFromJson(Map<String, dynamic> json) =>
    CourseGetResponse(
      courses: (json['Courses'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CourseGetResponseToJson(CourseGetResponse instance) =>
    <String, dynamic>{
      'Courses': instance.courses,
    };
