import 'package:chessmatey/src/features/tournament_selection/data/dtos/tournament_dto.dart';
import 'package:chessmatey/src/features/tournament_selection/domain/models/tournament.dart';
import 'package:chessmatey/src/common/util/service_locator.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:isar/isar.dart';

class TournamentDatasource {
  Future<IList<TournamentDTO>> getTournaments() async {
    final isar = getIt<Isar>();
    final tournaments = await isar.tournamentDTOs.where().findAll();
    return tournaments.lock;
  }

  Future<TournamentDTO> getTournamentById(Id id) async {
    final isar = getIt<Isar>();
    final tournament = await isar.tournamentDTOs.get(id);

    if (tournament == null) {
      return Future.error('Could not find tournament with id $id');
    } else {
      return tournament;
    }
  }

  Future<Id> saveTournament(TournamentDTO newTournament) async {
    final isar = getIt<Isar>();
    return isar
        .writeTxnSync<int>(() => isar.tournamentDTOs.putSync(newTournament));
  }

  Future<void> deleteTournament(TournamentID id) async {
    final isar = getIt<Isar>();
    isar.writeTxn<void>(() => isar.tournamentDTOs.delete(id));
  }
}
