import 'package:flutter/material.dart';
import 'package:project_2/pages/history.dart';
import 'package:project_2/pages/settings.dart';
import 'package:project_2/pages/whats_new.dart';

import '../pages/library.dart';
import '../widgets/playlist_tile.dart';
import '../widgets/recent_playlist_grid.dart';
import '../widgets/recently_layed_tile.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            const Text(
              'Good morning',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
            ),
            const SizedBox(
              width: 90,
            ),
            InkWell(
              child: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WhatsNewPage(),
                  )),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              child: const Icon(
                Icons.history,
                color: Colors.white,
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecentlyPlayed(),
                  )),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              child: const Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserSettings(),
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            ChipCard(),
            SizedBox(
              width: 12,
            ),
            ChipCard(),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const PlayListGridView(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: PlaylistTile(
            playlists: [1, 2, 3, 4, 5, 6],
            title: 'Jump back in',
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: RecentlyPlayedTile(
            recentlyplayed: [1, 2, 3, 4, 5, 6],
            title: 'Recently played',
          ),
        ),
      ]),
    );
  }
}
