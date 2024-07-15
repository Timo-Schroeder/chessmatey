import 'package:chessmatey/src/common/tournament_format.dart';
import 'package:chessmatey/src/features/tournament_selection/data/dtos/player_dto.dart';
import 'package:isar/isar.dart';

part 'tournament_dto.g.dart';

@collection
class TournamentDTO {
  Id id = Isar.autoIncrement;
  late String name;
  late DateTime startDate;
  late DateTime endDate;
  @enumerated
  late TournamentFormat format;

  @Backlink(to: 'tournament')
  final players = IsarLinks<PlayerDTO>();
}
