import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie_app/pages/authentication/sign_up_page.dart';
import 'package:movie_app/widgets/header_widget.dart';

class CreateYourAccountPage extends StatefulWidget {
  @override
  _CreateYourAccountPageState createState() => _CreateYourAccountPageState();
}

class _CreateYourAccountPageState extends State<CreateYourAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(),
          _bodyWidget(),
        ],
      ),
    );
  }

  Widget _bodyWidget() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              child: Image.asset('assets/images/devices.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "STEP 2 OF 3",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Create Your account.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Netflix is personalized for you. Use your email and create a password to watch Netflix on any device at any time.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUpPage()));
              },
              child: Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 9, 19),
                ),
                child: const Text(
                  "CONTINUE",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
