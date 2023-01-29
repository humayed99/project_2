import 'package:flutter/material.dart';

class RecentPlaylistCard extends StatelessWidget {
  const RecentPlaylistCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.withOpacity(0.3),
      child: Container(
          height: 60,
          width: 200,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Placeholder(
                  fallbackHeight: 60,
                  fallbackWidth: 60,
                ),
              ),
              Text(
                'On repeat',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          )),
    );
  }
}
