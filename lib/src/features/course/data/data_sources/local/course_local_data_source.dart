import 'package:database_service/database_service.dart';
import 'package:my_school/src/features/course/domain/models/course_model/course.dart';

class CourseLocalDataSource extends DatabaseCommonOperations<List<Course>> {
  final DatabaseService dbService;

  CourseLocalDataSource(this.dbService)
      : super(
          boxName: 'CourseDataSource',
          databaseService: dbService,
        );
}
