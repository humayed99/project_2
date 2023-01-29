import 'package:flutter/material.dart';

import 'playlist_card.dart';

class PlaylistTile extends StatelessWidget {
  const PlaylistTile({super.key, required this.title, required this.playlists});
  final String title;
  final List<dynamic> playlists;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: playlists
                .map((e) => const PlaylistCard(
                      ImageUrl: '',
                      description: "Describe..",
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
