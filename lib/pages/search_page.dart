import 'package:flutter/material.dart';
import 'package:movie_app/json/search_json.dart';
import 'package:movie_app/pages/video_detail_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Container(
          width: size.width,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.withOpacity(0.25)),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.withOpacity(0.7),
                )),
          ),
        ),
      ),
      body: getBody(),
    );
  }

  // Widget getAppBar() {
  //   var size = MediaQuery.of(context).size;
  //   return AppBar(
  //     backgroundColor: Colors.black,
  //     elevation: 0,
  //     title: Container(
  //       width: size.width,
  //       height: 35,
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(5),
  //           color: Colors.grey.withOpacity(0.25)),
  //       child: TextField(
  //         decoration: InputDecoration(
  //             border: InputBorder.none,
  //             hintText: "Search",
  //             prefixIcon: Icon(
  //               Icons.search,
  //               color: Colors.grey.withOpacity(0.7),
  //             )),
  //       ),
  //     ),
  //   );
  // }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Top Searches",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
                children: List.generate(searchJson.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => VideoDetailPage(
                                videoUrl: searchJson[index]['video'],
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      Container(
                        width: (size.width - 36) * 0.8,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 70,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              searchJson[index]['img']),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                    height: 70,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.2)))
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: (size.width - 30) * 0.4,
                              child: Text(
                                searchJson[index]['title'],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: (size.width - 36) * 0.2,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.white),
                              color: Colors.black.withOpacity(0.4)),
                          child: const Center(
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
