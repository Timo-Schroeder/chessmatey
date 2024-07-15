import 'package:chessmatey/src/common/fide_title.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'player.freezed.dart';

typedef PlayerID = int;

@freezed
class Player with _$Player {
  const factory Player({
    PlayerID? id,
    required String firstName,
    required String lastName,
    required DateTime dateOfBirth,
    required String club,
    int? nationalRating,
    int? elo,
    @enumerated FideTitle? title,
  }) = _Player;
}
