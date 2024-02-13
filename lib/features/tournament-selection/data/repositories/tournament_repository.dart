import 'package:chessmatey/features/tournament-selection/data/datasources/local_datasources/tournament_datasource.dart';
import 'package:chessmatey/features/tournament-selection/data/models/tournament_dto.dart';
import 'package:chessmatey/features/tournament-selection/domain/tournament.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

part 'tournament_repository.g.dart';

abstract class TournamentRepository {
  Future<IList<Tournament>> getAllTournaments();

  Future<Tournament> getTournamentByID(TournamentID id);

  Future<TournamentID> saveTournament(Tournament tournament);

  Future<void> deleteTournament(TournamentID id);
}

class TournamentRepositoryImpl implements TournamentRepository {
  final _tournamentDatasource = getService<TournamentDatasource>();

  @override
  Future<IList<Tournament>> getAllTournaments() async {
    return await _tournamentDatasource.getTournaments().then((tournaments) {
      final list = List<Tournament>.empty(growable: true);
      for (var t in tournaments) {
        list.add(_toTournament(t));
      }
      return list.lock;
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
    return _tournamentDatasource.saveTournament(_tournamentDto(tournament));
  }

  @override
  Future<void> deleteTournament(TournamentID id) async {
    _tournamentDatasource.deleteTournament(id);
  }

  Tournament _toTournament(TournamentDto dto) {
    return Tournament(
      id: dto.id,
      name: dto.name,
      startDate: dto.startDate,
      endDate: dto.endDate,
      format: dto.format,
    );
  }

  TournamentDto _tournamentDto(Tournament tournament) {
    final dto = TournamentDto();
    dto.name = tournament.name;
    dto.startDate = tournament.startDate;
    dto.endDate = tournament.endDate;
    dto.format = tournament.format;

    return dto;
  }
}

@riverpod
TournamentRepository tournamentRepository(Ref ref) {
  return TournamentRepositoryImpl();
}
