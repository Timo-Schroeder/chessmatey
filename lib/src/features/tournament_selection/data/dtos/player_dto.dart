import 'package:chessmatey/src/common/fide_title.dart';
import 'package:chessmatey/src/features/tournament_selection/data/dtos/tournament_dto.dart';
import 'package:isar/isar.dart';

part 'player_dto.g.dart';

@collection
class PlayerDTO {
  Id id = Isar.autoIncrement;
  late String firstName;
  late String lastName;
  late DateTime dateOfBirth;
  late String club;
  late int? nationalRating;
  late int? elo;
  @enumerated
  late FideTitle title;

  final tournament = IsarLink<TournamentDTO>();
}
