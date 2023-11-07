import 'package:chessmatey/features/tournament-selection/domain/tournament.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class TournamentRepository {
  Future<IList<Tournament>> getAllTournaments();

  Future<Tournament> getTournamentByID(TournamentID id);

  Future<TournamentID> saveTournament(Tournament tournament);

  Future<void> deleteTournament(TournamentID id);
}
