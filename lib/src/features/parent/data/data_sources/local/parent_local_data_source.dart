import 'package:database_service/database_service.dart';
import 'package:my_school/src/features/parent/domain/models/parent_model/parent.dart';

class ParentLocalDataSource
    extends DatabaseCommonOperations<Parent> {
  final DatabaseService dbService;

  ParentLocalDataSource(this.dbService)
      : super(
          boxName: 'ParentDataSource',
          databaseService: dbService,
        );
}
