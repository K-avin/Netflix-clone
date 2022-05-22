import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie_app/pages/root_app.dart';
import 'package:movie_app/widgets/header_widget.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        flexibleSpace: HeaderWidget(),
      ),
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            _formWidget(),
          ],
        ),
      ),
    );
  }

  Widget _formWidget() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "STEP 2 OF 3",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Sign up to start your\nmembership.",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Just Tow more steps and you're finished!\nwe hate paperwork, too.",
            style: TextStyle(fontSize: 15, color: Colors.white70),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Create your account",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                border: InputBorder.none,
                labelStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: InputBorder.none,
                labelStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Checkbox(
                value: _isCheck,
                onChanged: (value) {
                  setState(() {
                    _isCheck = value!;
                  });
                },
              ),
              const Text("Please do not email me Netflix special offers.")
            ],
          ),
          const SizedBox(
            height: 15,
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
                width: double.maxFinite,
                height: 50,
                alignment: Alignment.center,
                // padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 217, 9, 19),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
