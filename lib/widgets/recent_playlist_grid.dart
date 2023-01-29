import 'package:flutter/material.dart';

import 'recent_playlist_card.dart';

class PlayListGridView extends StatelessWidget {
  const PlayListGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.8,
        ),
        children: List<Widget>.generate(4, (l) {
          return const RecentPlaylistCard();
        }),
      ),
    );
  }
}
