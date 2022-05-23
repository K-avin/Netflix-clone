import 'package:flutter/material.dart';
import 'package:movie_app/pages/authentication/create_your_account.dart';
import 'package:movie_app/widgets/header_widget.dart';

class PlansPage extends StatefulWidget {
  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  int _selectPlan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        flexibleSpace: HeaderWidget(),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("STEP 1 OF 3"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Choose the plan that's right for you.",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Downgrade or upgrade at any time.",
                style: TextStyle(fontSize: 15, color: Colors.white70),
              ),
              const SizedBox(
                height: 15,
              ),
              _rowButtonWidget(),
              _plans(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rowButtonWidget() {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                _selectPlan = 0;
              });
            },
            child: _singleRowButton(
              text: "Basic",
              color: _selectPlan == 0
                  ? const Color.fromARGB(255, 217, 9, 19)
                  : Colors.grey[600],
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                _selectPlan = 1;
              });
            },
            child: _singleRowButton(
              text: "Standard",
              color: _selectPlan == 1
                  ? const Color.fromARGB(255, 217, 9, 19)
                  : Colors.grey[600],
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                _selectPlan = 2;
              });
            },
            child: _singleRowButton(
              text: "Premium",
              color: _selectPlan == 2
                  ? const Color.fromARGB(255, 217, 9, 19)
                  : Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }

  Widget _singleRowButton({Color? color, required String text}) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
          color: color),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _plans() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text("Monthly Price"),
          const SizedBox(
            height: 15,
          ),
          _monthlyPriceWidget(),
          const SizedBox(
            height: 15,
          ),
          const Text("Video Quality"),
          const SizedBox(
            height: 15,
          ),
          _videoQualityWidget(),
          const SizedBox(
            height: 15,
          ),
          const Text("Resolution"),
          const SizedBox(
            height: 15,
          ),
          _resolutionWidget(),
          const SizedBox(
            height: 15,
          ),
          const Text("Screens you can watch on at the same time"),
          const SizedBox(
            height: 15,
          ),
          _screensYouWatchWidget(),
          const SizedBox(
            height: 15,
          ),
          const Text("Watch on your laptop, TV Phones and Tablet"),
          const SizedBox(
            height: 15,
          ),
          _watchOnAnyDeviceWidget(),
          const SizedBox(
            height: 15,
          ),
          const Text("Unlimited files and TV Programmers"),
          const SizedBox(
            height: 15,
          ),
          _watchOnAnyDeviceWidget(),
          const SizedBox(
            height: 15,
          ),
          const Text("Cancel at any time"),
          const SizedBox(
            height: 15,
          ),
          _watchOnAnyDeviceWidget(),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "HD (720p), full HD (1080p), Ultra HD (4k) and HDR availability subject to your internet service and device capabilities. Not all content available in HD, Full HD, Ultra HD or HDR. See Terms Use For More Details,",
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CreateYourAccountPage(),
                  ));
            },
            child: Container(
              height: 45,
              width: double.maxFinite,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 9, 19),
                  borderRadius: const BorderRadius.all(Radius.circular(4))),
              child: const Text(
                "CONTINUE",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget _monthlyPriceWidget() {
    if (_selectPlan == 0) {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "Rs950",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,200",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,500",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    } else if (_selectPlan == 1) {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "Rs950",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,200",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,500",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "Rs950",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,200",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,500",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    }
  }

  Widget _videoQualityWidget() {
    if (_selectPlan == 0) {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "Good",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Better",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Best",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    } else if (_selectPlan == 1) {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "Good",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Better",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Best",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "Good",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Better",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Best",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    }
  }

  Widget _resolutionWidget() {
    if (_selectPlan == 0) {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "480p",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "1080p",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4k+HDR",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    } else if (_selectPlan == 1) {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "480p",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "1080p",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4k+HDR",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "480p",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "1080p",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4k+HDR",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    }
  }

  Widget _screensYouWatchWidget() {
    if (_selectPlan == 0) {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    } else if (_selectPlan == 1) {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(color: Color.fromARGB(255, 217, 9, 19)),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    }
  }

  Widget _watchOnAnyDeviceWidget() {
    if (_selectPlan == 0) {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Color.fromARGB(255, 217, 9, 19),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    } else if (_selectPlan == 1) {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Color.fromARGB(255, 217, 9, 19),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Color.fromARGB(255, 217, 9, 19),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          )
        ],
      );
    }
  }
}
