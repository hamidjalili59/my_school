import 'package:database_service/database_service.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';

class StudentLocalDataSource
    extends DatabaseCommonOperations<List<Student>> {
  final DatabaseService dbService;

  StudentLocalDataSource(this.dbService)
      : super(
          boxName: 'StudentDataSource',
          databaseService: dbService,
        );
}
