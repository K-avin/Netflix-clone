import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:movie_app/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  ///Changed a little bit of buttons styling and text for the thumbnail lol
  ///Thanks for coming here :-)

  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Connect With Everyone',
        body:
            'Here you can have whatever description you would like to have, you can type it all in here description you ',
        footer: SizedBox(
          height: 48,
          width: 350,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 8),
            onPressed: () {},
            child: const Text("Get stared",
                style: TextStyle(color: Colors.black, fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset(
            'assets/images/logo.ico',
            height: 150,
          ),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'Connect With Everyone',
        body:
            'Here you can have whatever description you would like to have, you can type it all in here description you ',
        // footer: SizedBox(
        //   height: 45,
        //   width: 300,
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //         primary: Colors.red,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(10)),
        //         elevation: 8),
        //     onPressed: () {},
        //     child: const Text("Let's Go", style: TextStyle(fontSize: 20)),
        //   ),
        // ),
        image: Center(
          child: Image.asset(
            'assets/images/logo.ico',
            height: 150,
          ),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'Connect With Everyone',
        body:
            'Here you can have whatever description you would like to have, you can type it all in here description you ',
        // footer: SizedBox(
        //   height: 45,
        //   width: 300,
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //         primary: Colors.red,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(10)),
        //         elevation: 8),
        //     onPressed: () {},
        //     child: const Text("Let's Go", style: TextStyle(fontSize: 20)),
        //   ),
        // ),
        image: Center(
          child: Image.asset(
            'assets/images/logo.ico',
            height: 150,
          ),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
        ))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(5, 5),
            color: Colors.white54,
            activeSize: Size.square(5),
            activeColor: Colors.white,
          ),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 20,
            color: Colors.white,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const LoginPage(
                  title: '',
                )));
  }
}
