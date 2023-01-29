import 'package:flutter/material.dart';

import '../Pages/library.dart';

class WhatsNewPage extends StatefulWidget {
  const WhatsNewPage({super.key});

  @override
  State<WhatsNewPage> createState() => _WhatsNewPageState();
}

class _WhatsNewPageState extends State<WhatsNewPage> {
  var heartColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What's New",
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "The latest releases from artists, podcasts, and shows you follow.",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              const SizedBox(
                height: 15,
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
                height: 15,
              ),
              const Text(
                'Earlier',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                textColor: Colors.white,
                leading: Image.network('https://static.stereogum.com/uploads/2016/06/Mild-High-Club-Skiptracing.jpg'),
                title: const Text('Song Name', style: TextStyle(fontWeight: FontWeight.w700)),
                subtitle: const Text('Artist'),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (heartColor == const Color(0xFF1bd760)) {
                          heartColor = Colors.white;
                        } else {
                          heartColor = const Color(0xFF1bd760);
                        }
                      });
                    },
                    child: Icon(
                      Icons.favorite,
                      color: heartColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.downloading_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 220,
                  ),
                  const Icon(
                    Icons.play_circle_fill_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
