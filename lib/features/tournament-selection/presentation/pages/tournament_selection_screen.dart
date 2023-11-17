import 'package:chessmatey/common/widgets/header_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TournamentSelectionScreen extends ConsumerWidget {
  const TournamentSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const HeaderBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Hello from the Tournament Selection Screen'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('New Tournament'),
            )
          ],
        ),
      ),
    );
  }
}
