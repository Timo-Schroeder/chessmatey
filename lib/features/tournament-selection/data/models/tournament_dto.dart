import 'package:chessmatey/common/tournament_format.dart';
import 'package:chessmatey/features/tournament-selection/data/models/player_dto.dart';
import 'package:isar/isar.dart';

part 'tournament_dto.g.dart';

@collection
class TournamentDto {
  Id id = Isar.autoIncrement;
  late String name;
  late DateTime startDate;
  late DateTime endDate;
  @enumerated
  late TournamentFormat format;

  @Backlink(to: 'tournament')
  final players = IsarLinks<PlayerDto>();
}
