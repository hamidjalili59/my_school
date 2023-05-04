// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_success_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CourseSuccessResponseAdapter extends TypeAdapter<CourseSuccessResponse> {
  @override
  final int typeId = 13;

  @override
  CourseSuccessResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CourseSuccessResponse(
      course: fields[0] as Course,
    );
  }

  @override
  void write(BinaryWriter writer, CourseSuccessResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.course);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseSuccessResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseSuccessResponse _$CourseSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    CourseSuccessResponse(
      course: Course.fromJson(json['Course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseSuccessResponseToJson(
        CourseSuccessResponse instance) =>
    <String, dynamic>{
      'Course': instance.course,
    };
