import 'package:database_service/database_service.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';

class ClassroomLocalDataSource
    extends DatabaseCommonOperations<List<Classroom>> {
  final DatabaseService dbService;

  ClassroomLocalDataSource(this.dbService)
      : super(
          boxName: 'ClassroomDataSource',
          databaseService: dbService,
        );
}
