import 'package:database_service/database_service.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';

class TeacherLocalDataSource
    extends DatabaseCommonOperations<List<Teacher>> {
  final DatabaseService dbService;

  TeacherLocalDataSource(this.dbService)
      : super(
          boxName: 'TeacherDataSource',
          databaseService: dbService,
        );
}
