import 'package:chessmatey/common/fide_title.dart';
import 'package:chessmatey/features/tournament-selection/data/models/tournament_dto.dart';
import 'package:isar/isar.dart';

part 'player_dto.g.dart';

@collection
class PlayerDto {
  Id id = Isar.autoIncrement;
  late String firstName;
  late String lastName;
  late DateTime dateOfBirth;
  late String club;
  late int? nationalRating;
  late int? elo;
  @enumerated
  late FideTitle title;

  final tournament = IsarLink<TournamentDto>();
}
