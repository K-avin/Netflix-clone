import 'package:flutter/material.dart';
import 'package:movie_app/json/on_boarding_entity.dart';
import 'package:movie_app/pages/choose_your_plan_page.dart';
import 'package:movie_app/widgets/header_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _onBoardingData = OnBoardingEntity.onBoardingData;
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          _pageViewBuilderWidget(),
          _columnWidget(),
          HeaderWidget(),
        ],
      ),
    );
  }

  Widget _pageViewBuilderWidget() {
    return PageView.builder(
      itemCount: _onBoardingData.length,
      onPageChanged: (index) {
        setState(() {
          _currentPageIndex = index;
        });
      },
      itemBuilder: (ctx, index) {
        return Stack(
          fit: StackFit.passthrough,
          children: [
            index == 0
                ? SizedBox(
                    height: double.infinity,
                    child: Image.asset(
                      _onBoardingData[index].image,
                      fit: BoxFit.cover,
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Image.asset(
                      _onBoardingData[index].image,
                    ),
                  ),
            index == 0
                ? Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(1),
                            Colors.black.withOpacity(.6),
                          ],
                          tileMode: TileMode.clamp,
                          begin: const Alignment(0.8, 0.9),
                          end: const Alignment(0.9, 0)),
                    ),
                  )
                : Container(),
            Container(
              margin: const EdgeInsets.only(top: 400, left: 65, right: 65),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _onBoardingData[index].heading,
                    style: const TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    _onBoardingData[index].description,
                    style: const TextStyle(fontSize: 18, color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  Widget _columnWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _onBoardingData.map(
                (data) {
                  //get index
                  int index = _onBoardingData.indexOf(data);
                  return Container(
                    height: 8,
                    width: 8,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: index == _currentPageIndex
                          ? Colors.white
                          : Colors.grey,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChooseYourPlanPage(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 10, right: 15, left: 15),
              padding: EdgeInsets.symmetric(vertical: 12),
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                color: Color.fromARGB(255, 217, 9, 19),
              ),
              child: const Text(
                "GET STARTED",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
