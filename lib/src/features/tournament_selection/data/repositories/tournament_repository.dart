import 'package:chessmatey/src/features/tournament_selection/data/datasources/local_datasources/tournament_datasource.dart';
import 'package:chessmatey/src/features/tournament_selection/data/dtos/tournament_dto.dart';
import 'package:chessmatey/src/features/tournament_selection/domain/models/tournament.dart';
import 'package:chessmatey/src/common/util/service_locator.dart';

abstract class TournamentRepository {
  Future<List<Tournament>> getAllTournaments();

  Future<Tournament> getTournamentByID(TournamentID id);

  Future<TournamentID> saveTournament(Tournament tournament);

  Future<void> deleteTournament(TournamentID id);
}

class TournamentRepositoryImpl implements TournamentRepository {
  final _tournamentDatasource = getIt<TournamentDatasource>();

  @override
  Future<List<Tournament>> getAllTournaments() async {
    return await _tournamentDatasource.getTournaments().then((tournaments) {
      final list = List<Tournament>.empty(growable: true);
      for (var t in tournaments) {
        list.add(_toTournament(t));
      }
      return list;
    });
  }

  @override
  Future<Tournament> getTournamentByID(TournamentID id) async {
    return await _tournamentDatasource
        .getTournamentById(id)
        .then((value) => _toTournament(value));
  }

  @override
  Future<TournamentID> saveTournament(Tournament tournament) async {
    return _tournamentDatasource.saveTournament(_toTournamentDTO(tournament));
  }

  @override
  Future<void> deleteTournament(TournamentID id) async {
    _tournamentDatasource.deleteTournament(id);
  }

  Tournament _toTournament(TournamentDTO dto) {
    return Tournament(
      id: dto.id,
      name: dto.name,
      startDate: dto.startDate,
      endDate: dto.endDate,
      format: dto.format,
    );
  }

  TournamentDTO _toTournamentDTO(Tournament tournament) {
    final dto = TournamentDTO();
    dto.name = tournament.name;
    dto.startDate = tournament.startDate;
    dto.endDate = tournament.endDate;
    dto.format = tournament.format;

    return dto;
  }
}
