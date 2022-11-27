import 'package:database_service/database_service.dart';
import 'package:my_school/src/features/exam/domain/models/exam_model.dart';

class ExamLocalDataSource
    extends DatabaseCommonOperations<List<Exam>> {
  final DatabaseService dbService;

  ExamLocalDataSource(this.dbService)
      : super(
          boxName: 'ExamDataSource',
          databaseService: dbService,
        );
}
