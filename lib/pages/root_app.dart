// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:movie_app/json/root_app_json.dart';
import 'package:movie_app/pages/coming_soon_page.dart';
import 'package:movie_app/pages/download_page.dart';
import 'package:movie_app/pages/home_page.dart';
import 'package:movie_app/pages/profile_page.dart';
import 'package:movie_app/pages/search_page.dart';
import 'package:movie_app/pages/video_detail_page.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        ComingSoonPage(),
        SearchPage(),
        DownloadPage(),
        ProfilePage(),
        const VideoDetailPage(
          videoUrl: '',
        )
      ],
    );
  }

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = index;
                });
              },
              child: Column(
                children: [
                  Icon(
                    items[index]['icon'],
                    color: activeTab == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.5),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    items[index]['text'],
                    style: TextStyle(
                        fontSize: 10,
                        color: activeTab == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5)),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}