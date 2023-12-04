import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starter_app/providers/app_state.dart';
import 'package:starter_app/views/generator_page.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favorites.length} favorites:'),
        ),
        for (var pair in appState.favorites) BigCard(pair: pair)
      ],
    );
  }
}
