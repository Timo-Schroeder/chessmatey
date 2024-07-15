import 'package:chessmatey/src/features/tournament_selection/data/repositories/tournament_repository.dart';
import 'package:chessmatey/src/features/tournament_selection/domain/models/tournament.dart';
import 'package:chessmatey/src/common/util/service_locator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tournament_list_provider.g.dart';

@riverpod
class TournamentList extends _$TournamentList {
  late TournamentRepository tournamentRepository;

  Future<List<Tournament>> _fetchTournament() async {
    return tournamentRepository.getAllTournaments();
  }

  @override
  Future<List<Tournament>> build() async {
    tournamentRepository = getIt<TournamentRepository>();

    return _fetchTournament();
  }

  Future<void> addTournament(Tournament tournament) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await tournamentRepository.saveTournament(tournament);
      return _fetchTournament();
    });
  }

  Future<void> deleteTournament(int id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await tournamentRepository.deleteTournament(id);
      return _fetchTournament();
    });
  }
}
