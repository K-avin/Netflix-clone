// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/pages/home_page.dart';
import 'package:movie_app/pages/login_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.settings,
                size: 28,
              ),
              onPressed: () {}),
          // IconButton(
          //     icon: Image.network(
          //       "https://avatars.githubusercontent.com/u/19858893?v=4",
          //       fit: BoxFit.cover,
          //       width: 26,
          //       height: 26,
          //     ),
          //     onPressed: () {}),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            // const Text(
            //   "Settings",
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 25,
            //       fontWeight: FontWeight.w500),
            // ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 95,
                    height: 95,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        // boxShadow: [
                        //   BoxShadow(
                        //       spreadRadius: 2,
                        //       blurRadius: 10,
                        //       color: Colors.white.withOpacity(0.1),
                        //       offset: const Offset(0, 10))
                        // ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://avatars.githubusercontent.com/u/19858893?v=4",
                            ))),
                  ),
                  Positioned(
                      bottom: 3,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 30, 30, 30),
                          ),
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.red,
                          size: 17,
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Icon(
                  Icons.person,
                  color: Colors.white70,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(
              height: 15,
              // thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, "Change password"),
            buildAccountOptionRow(context, "Content settings"),
            buildAccountOptionRow(context, "Social"),
            buildAccountOptionRow(context, "Language"),
            buildAccountOptionRow(context, "Privacy and security"),

            buildAccountSignoutRow(context, "Sign out"),
            const SizedBox(
              height: 40,
            ),
            // Row(
            //   children: const [
            //     Icon(
            //       Icons.volume_up_outlined,
            //       color: Colors.white,
            //     ),
            //     SizedBox(
            //       width: 8,
            //     ),
            //     Text(
            //       "Notifications",
            //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //     ),
            //   ],
            // ),
            const Divider(
              height: 15,
              // thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            // buildNotificationOptionRow("New for you", true),
            // buildNotificationOptionRow("Account activity", true),
            // buildNotificationOptionRow("Opportunity", false),
            // const SizedBox(
            //   height: 50,
            // ),
            // Center(
            //   child: RaisedButton(
            //     // padding: EdgeInsets.symmetric(horizontal: 40),
            //     // shape: RoundedRectangleBorder(
            //     //     borderRadius: BorderRadius.circular(20)),
            //     onPressed: () {},
            //     color: Colors.white,
            //     padding: const EdgeInsets.symmetric(horizontal: 20),
            //     elevation: 9,
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(6)),
            //     child: const Text("Sign out",
            //         style: TextStyle(
            //           fontSize: 16,
            //           letterSpacing: 2.2,
            //           color: Colors.red,
            //         )),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  // Widget getAppBar() {
  //   return AppBar(
  //     backgroundColor: Colors.black,
  //     elevation: 0.0,
  //     title: const Text(
  //       "My Downloads",
  //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  //     ),
  //     actions: [
  //       IconButton(
  //           icon: const Icon(
  //             Icons.collections_bookmark,
  //             size: 28,
  //           ),
  //           onPressed: () {}),
  //       IconButton(
  //           icon: Image.asset(
  //             "https://avatars.githubusercontent.com/u/19858893?v=4",
  //             fit: BoxFit.cover,
  //             width: 26,
  //             height: 26,
  //           ),
  //           onPressed: () {}),
  //     ],
  //   );
  // }

  // Widget getBody() {
  //   var size = MediaQuery.of(context).size;

  // }

  GestureDetector buildAccountSignoutRow(BuildContext context, String title) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                // fontWeight: FontWeight.w500,
                color: Colors.white70,
              ),
            ),
            const Icon(
              Icons.logout,
              size: 16,
              color: Colors.white70,
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: const Color.fromARGB(255, 27, 27, 27),
                title: Text(
                  title,
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    TextField(
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white70,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white60,
                        ),
                        hintText: 'New password',
                        hintStyle:
                            TextStyle(fontSize: 14.0, color: Colors.white60),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(10),
                        // ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white70,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white60,
                        ),
                        hintText: 'Confirm password',
                        hintStyle:
                            TextStyle(fontSize: 14.0, color: Colors.white60),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(10),
                        // ),
                      ),
                    ),
                  ],
                ),
                actions: [
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    textColor: Colors.white,
                    child: const Text("Close"),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    textColor: Colors.white,
                    child: const Text("Save"),
                  ),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                // fontWeight: FontWeight.w500,
                color: Colors.white70,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.white70,
            ),
          ],
        ),
      ),
    );
  }
}
