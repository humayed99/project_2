import 'package:flutter/material.dart';

import '../pages/search.dart';

class MyLibraryPage extends StatelessWidget {
  const MyLibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(children: [
                  const CircleAvatar(),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Your Library',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 135,
                  ),
                  const InkWell(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    // onTap: () {}
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  InkWell(
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onTap: () {
                        showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 200,
                                color: const Color(0xFF282828),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Create',
                                        style:
                                            TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
                                      ),
                                      ListTile(
                                        textColor: Colors.white,
                                        iconColor: Colors.white,
                                        leading: Icon(Icons.music_note_outlined),
                                        title: Text(
                                          'Playlist',
                                          style: TextStyle(fontWeight: FontWeight.w700),
                                        ),
                                        subtitle: Text('Add songs to a new playlist'),
                                      ),
                                      ListTile(
                                        textColor: Colors.white,
                                        iconColor: Colors.white,
                                        leading: Icon(Icons.join_inner_outlined),
                                        title: Text('Blend', style: TextStyle(fontWeight: FontWeight.w700)),
                                        subtitle: Text('Combine tastes in a shared playlist with friends'),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      })
                ]),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      ChipCard(),
                      SizedBox(
                        width: 12,
                      ),
                      ChipCard(),
                      SizedBox(
                        width: 12,
                      ),
                      ChipCard(),
                      SizedBox(
                        width: 12,
                      ),
                      ChipCard(),
                      SizedBox(
                        width: 12,
                      ),
                      ChipCard(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    Text(
                      'Recents',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 268),
                    Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: GridView.count(
                      primary: false,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: const [
                        SearchCatagory(),
                        SearchCatagory(),
                        SearchCatagory(),
                        SearchCatagory(),
                        SearchCatagory(),
                        SearchCatagory(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class ChipCard extends StatelessWidget {
  const ChipCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: const Text(
        'Playlists',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
    );
  }
}
