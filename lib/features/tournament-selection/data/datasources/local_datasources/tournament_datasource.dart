import 'package:chessmatey/features/tournament-selection/data/models/player_dto.dart';
import 'package:chessmatey/features/tournament-selection/data/models/tournament_dto.dart';
import 'package:chessmatey/features/tournament-selection/domain/tournament.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class TournamentDatasource {
  late Future<Isar> db;

  TournamentDatasource() {
    db = openDB();
  }

  Future<IList<TournamentDto>> getTournaments() async {
    final isar = await db;
    final tournaments = await isar.tournamentDtos.where().findAll();
    return tournaments.lock;
  }

  Future<TournamentDto> getTournamentById(Id id) async {
    final isar = await db;
    final tournament = await isar.tournamentDtos.get(id);

    if (tournament == null) {
      return Future.error('Could not find tournament with id $id');
    } else {
      return tournament;
    }
  }

  Future<Id> saveTournament(TournamentDto newTournament) async {
    final isar = await db;
    return isar
        .writeTxnSync<int>(() => isar.tournamentDtos.putSync(newTournament));
  }

  Future<void> deleteTournament(TournamentID id) async {
    final isar = await db;
    await isar.tournamentDtos.delete(id);
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open([TournamentDtoSchema, PlayerDtoSchema],
        directory: dir.path);
  }
}
