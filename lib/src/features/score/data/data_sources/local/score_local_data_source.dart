import 'package:database_service/database_service.dart';
import 'package:my_school/src/features/score/domain/models/score_model.dart';

class ScoreLocalDataSource
    extends DatabaseCommonOperations<List<Score>> {
  final DatabaseService dbService;

  ScoreLocalDataSource(this.dbService)
      : super(
          boxName: 'ScoreDataSource',
          databaseService: dbService,
        );
}
