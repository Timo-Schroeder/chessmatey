import 'package:chessmatey/common/tournament_format.dart';
import 'package:chessmatey/common/widgets/header_bar.dart';
import 'package:chessmatey/features/tournament-selection/presentation/controllers/tournament_creation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class TournamentCreationScreen extends HookConsumerWidget {
  const TournamentCreationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final tournamentDateRange = useState<DateTimeRange>(
        DateTimeRange(start: DateTime.now(), end: DateTime.now()));
    final tournamentFormat = useState<TournamentFormat>(TournamentFormat.swiss);

    return Scaffold(
      appBar: HeaderBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Daterange:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            OutlinedButton(
              onPressed: () {
                final range = showDateRangePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 365)),
                  initialDateRange: tournamentDateRange.value,
                  builder: (context, child) {
                    return Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 400.0,
                          maxHeight: 600.0,
                        ),
                        child: child,
                      ),
                    );
                  },
                );
                range.then(
                  (value) {
                    if (value != null) {
                      tournamentDateRange.value = value;
                    }
                  },
                );
              },
              child: const Text('Set dates'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Format:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            YaruPopupMenuButton<TournamentFormat>(
              initialValue: tournamentFormat.value,
              child: Text(tournamentFormat.value.name),
              itemBuilder: (context) {
                return [
                  for (final value in TournamentFormat.values)
                    PopupMenuItem(
                      value: value,
                      child: Text(
                        value.name,
                      ),
                    ),
                ];
              },
              onSelected: (value) => tournamentFormat.value = value,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () => ref
                      .read(tournamentCreationControllerProvider.notifier)
                      .createTournament(
                        name: nameController.text,
                        range: tournamentDateRange.value,
                        format: tournamentFormat.value,
                      ),
                  child: const Text('Create'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
