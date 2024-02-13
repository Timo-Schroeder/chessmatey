import 'dart:async';

import 'package:chessmatey/features/tournament-selection/data/repositories/tournament_repository.dart';
import 'package:chessmatey/features/tournament-selection/domain/tournament.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tournament_selection_controller.g.dart';

@riverpod
class TournamentSelectionController extends _$TournamentSelectionController {
  @override
  Future<IList<Tournament>> build() async {
    final tournamentRepository = ref.read(tournamentRepositoryProvider);
    return await tournamentRepository.getAllTournaments();
  }

  Future<IList<Tournament>> getAllTournaments() async {
    return ref.watch(tournamentRepositoryProvider).getAllTournaments();
  }
}
