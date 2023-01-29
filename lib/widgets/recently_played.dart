import 'package:flutter/material.dart';

class RecentlyPlayedCard extends StatelessWidget {
  const RecentlyPlayedCard({
    super.key,
    required this.description,
  });
  final String description;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.withOpacity(0),
      child: Column(children: [
        Image.network('https://via.placeholder.com/100 '),
        Text(description,
            style: const TextStyle(
              color: Colors.white,
            ))
      ]),
    );
  }
}
