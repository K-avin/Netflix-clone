import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/pages/register_page.dart';
import 'package:movie_app/pages/root_app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sign in',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 60,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) => EmailValidator.validate(value!)
                        ? null
                        : "Please enter a valid email",
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white70,
                        ),
                      ),
                      hintText: 'Enter your email',
                      fillColor: Colors.red,
                      hintStyle: const TextStyle(
                          fontSize: 14.0, color: Colors.white60),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.white60,
                      ),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white70,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.white60,
                      ),
                      hintText: 'Enter your password',
                      hintStyle: const TextStyle(
                          fontSize: 14.0, color: Colors.white60),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    title: const Text(
                      "Remember me",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    contentPadding: EdgeInsets.zero,
                    value: rememberValue,
                    activeColor: const Color.fromARGB(255, 172, 20, 9),
                    onChanged: (newValue) {
                      setState(() {
                        rememberValue = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     if (_formKey.currentState!.validate()) {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) => RootApp()),
                  //       );
                  //     }
                  //   },
                  //   // style: ButtonStyle(
                  //   //   padding: MaterialStateProperty.all(
                  //   //       const EdgeInsets.fromLTRB(60, 13, 60, 18)),
                  //   //   backgroundColor: MaterialStateProperty.all(
                  //   //       const Color.fromARGB(255, 187, 24, 13)),
                  //   // ),
                  //   child: const Text(
                  //     'Sign in',
                  //     style: TextStyle(
                  //         // fontWeight: FontWeight.bold,
                  //         color: Colors.white,
                  //         fontSize: 16),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50.0,
                    color: Color.fromARGB(255, 224, 17, 2),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                    // child: Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(20.0),
                    //   color: Colors.transparent,
                    //   // borderRadius: BorderRadius.circular(20.0)
                    // ),
                    child: InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RootApp()),
                          );
                        }
                      },
                      child: const Center(
                        child: Text('Sign in',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ),
                    ),
                    // ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Not registered yet?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage(
                                      title: 'register',
                                    )),
                          );
                        },
                        child: const Text(
                          'Create an account',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
