import 'package:flutter/material.dart';
import 'package:movie_app/pages/subscription/plans_page.dart';
import 'package:movie_app/widgets/header_widget.dart';

class ChooseYourPlanPage extends StatefulWidget {
  @override
  _ChooseYourPlanPageState createState() => _ChooseYourPlanPageState();
}

class _ChooseYourPlanPageState extends State<ChooseYourPlanPage> {
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
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                  border: Border.all(
                      color: Color.fromARGB(255, 217, 9, 19), width: 1.5)),
              child: const Icon(
                Icons.done,
                size: 26,
                color: Color.fromARGB(255, 217, 9, 19),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "STEP 1 OF 3",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Choose your plan.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            _rowWidget(title: "No Commitments, cancel at any time."),
            const SizedBox(
              height: 25,
            ),
            _rowWidget(title: "Everything on Netflix for one low prince."),
            const SizedBox(
              height: 20,
            ),
            _rowWidget(title: "Unlimited viewing on all your devices."),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlansPage(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 217, 9, 19),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: const Text("SEE THE PLANS"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _rowWidget({required String title}) {
    return Row(
      children: [
        Icon(
          Icons.done,
          color: Color.fromARGB(255, 217, 9, 19),
          size: 25,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
