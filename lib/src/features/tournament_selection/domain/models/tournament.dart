import 'package:chessmatey/src/common/tournament_format.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tournament.freezed.dart';

typedef TournamentID = int;

@freezed
class Tournament with _$Tournament {
  const factory Tournament({
    TournamentID? id,
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    required TournamentFormat format,
  }) = _Tournament;
}
