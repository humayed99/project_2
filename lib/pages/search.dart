import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    (Icons.search),
                    color: Colors.black,
                  ),
                  hintText: 'What do you want to listen to?',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIconColor: Colors.black),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Browse all',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
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
      )),
    );
  }
}

class SearchCatagory extends StatelessWidget {
  const SearchCatagory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.orange,
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Podcasts',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
