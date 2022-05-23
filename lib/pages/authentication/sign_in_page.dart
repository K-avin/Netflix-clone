import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie_app/pages/root_app.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Column(
          children: [
            _headerWidget(),
            const SizedBox(
              height: 10,
            ),
            _formWidget(),
          ],
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          child: Image.asset('assets/images/logo.png'),
        )
      ],
    );
  }

  Widget _formWidget() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  labelText: "Email or phone number"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  labelText: "Password"),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              // if (_formKey.currentState!.validate()) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RootApp()),
              );
              // }
            },
            child: Container(
              height: 60,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 15),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: const Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Need Help?",
            style: TextStyle(color: Colors.white60, fontSize: 15),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "New to Netflix?  Sign up now.",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white70),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Sign-in is protected by Google reCAPTCHA to ensure you're not a bot. Learn more.",
            style: TextStyle(color: Colors.white54, fontSize: 13),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
