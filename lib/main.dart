import 'package:chessmatey/features/tournament-selection/data/datasources/local_datasources/tournament_datasource.dart';
import 'package:chessmatey/features/tournament-selection/presentation/pages/tournament_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

Future<void> main() async {
  await YaruWindowTitleBar.ensureInitialized();

  registerService<TournamentDatasource>(() => TournamentDatasource());

  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return YaruTheme(builder: (context, yaru, _) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: yaru.theme,
        darkTheme: yaru.darkTheme,
        themeMode: ThemeMode.dark,
        home: const TournamentSelectionScreen(),
      );
    });
  }
}
