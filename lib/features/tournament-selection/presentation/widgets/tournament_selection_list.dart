import 'package:chessmatey/features/tournament-selection/presentation/controllers/tournament_selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class TournamentSelectionList extends ConsumerWidget {
  const TournamentSelectionList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tournamentListAsync =
        ref.watch(tournamentSelectionControllerProvider);

    return switch (tournamentListAsync) {
      AsyncData(:final value) => YaruSection(
          headline: const Text('Tournaments'),
          width: 400,
          height: 400,
          padding: const EdgeInsets.all(kYaruPagePadding),
          child: ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, itemCount) => YaruTile(
              title: Text(value.get(itemCount).name),
              leading: Text(
                value.get(itemCount).id.toString(),
              ),
              trailing: YaruIconButton(
                icon: const Icon(YaruIcons.pen),
                onPressed: () {},
              ),
            ),
          ),
        ),
      AsyncError(:final error) => Text('error: $error'),
      _ => const YaruCircularProgressIndicator(),
    };
  }
}
