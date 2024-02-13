import 'package:chessmatey/common/tournament_format.dart';
import 'package:chessmatey/features/tournament-selection/data/repositories/tournament_repository.dart';
import 'package:chessmatey/features/tournament-selection/domain/tournament.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tournament_creation_controller.g.dart';

@riverpod
class TournamentCreationController extends _$TournamentCreationController {
  @override
  FutureOr<void> build() {}

  Future<void> createTournament(
      {required String name,
      required DateTimeRange range,
      required TournamentFormat format}) {
    if (name.isEmpty) {
      return Future.error('Name cannot be empty');
    }

    final tournament = Tournament(
      name: name,
      startDate: range.start,
      endDate: range.end,
      format: format,
    );

    print(tournament);

    ref.read(tournamentRepositoryProvider).saveTournament(tournament);
    return Future.value();
  }
}
