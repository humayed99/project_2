import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({super.key, required this.description, required this.ImageUrl});
  final String ImageUrl;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.withOpacity(0),
      child: Column(
        children: [
          Image.network(''),
          Text(description,
              style: const TextStyle(
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
