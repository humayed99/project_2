import 'package:flutter/material.dart';
import 'package:project_2/widgets/recently_played.dart';

class RecentlyPlayedTile extends StatelessWidget {
  const RecentlyPlayedTile({super.key, required this.title, required this.recentlyplayed});
  final String title;
  final List<dynamic> recentlyplayed;

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
            children: recentlyplayed
                .map((e) => const RecentlyPlayedCard(
                      description: "Describe..",
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
