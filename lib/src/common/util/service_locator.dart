import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:chessmatey/src/features/tournament_selection/data/datasources/local_datasources/tournament_datasource.dart';
import 'package:chessmatey/src/features/tournament_selection/data/dtos/player_dto.dart';
import 'package:chessmatey/src/features/tournament_selection/data/repositories/tournament_repository.dart';
import 'package:chessmatey/src/features/tournament_selection/data/dtos/tournament_dto.dart';

GetIt getIt = GetIt.I;

Future<void> setup() async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open([
    TournamentDTOSchema,
    PlayerDTOSchema,
  ], directory: dir.path);
  getIt.registerSingleton<Isar>(isar);

  getIt.registerLazySingleton<TournamentRepository>(
      () => TournamentRepositoryImpl());

  getIt.registerLazySingleton<TournamentDatasource>(
      () => TournamentDatasource());
}
