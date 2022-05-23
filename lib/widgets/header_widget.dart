import 'package:flutter/material.dart';
import 'package:movie_app/pages/authentication/sign_in_page.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 70,
            child: Image.asset('assets/images/n_symbol.png'),
          ),
          Row(
            children: [
              const Text(
                "PRIVACY",
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SignInPage(),
                        ));
                  },
                  child: const Text(
                    "SIGN IN",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                width: 10,
              ),
              // const Text("HELP"),
              const Icon(
                Icons.more_vert_rounded,
                color: Colors.white70,
              ),
              // const SizedBox(
              //   width: 10,
              // ),
            ],
          )
        ],
      ),
    );
  }
}
