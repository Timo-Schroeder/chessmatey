import 'package:chessmatey/src/features/tournament_selection/presentation/tournament_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yaru/yaru.dart';

class TournamentSelectionList extends ConsumerWidget {
  const TournamentSelectionList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tournamentListAsync = ref.watch(tournamentListProvider);

    return YaruSection(
      headline: const Text('Tournaments'),
      width: 400,
      height: 400,
      padding: const EdgeInsets.all(kYaruPagePadding),
      child: switch (tournamentListAsync) {
        AsyncData(:final value) => ListView(
            children: [
              for (final tournament in value)
                YaruTile(
                  title: Text(tournament.name),
                  trailing: YaruIconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      ref
                          .read(tournamentListProvider.notifier)
                          .deleteTournament(tournament.id!);
                    },
                  ),
                ),
            ],
          ),
        AsyncError(:final error) => Text('error: $error'),
        _ => const YaruCircularProgressIndicator(),
      },
    );
  }
}
