import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:fruitapp/pages/homepage.dart';
// ignore: unused_import
import 'package:fruitapp/widget/button_widget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Fruit is nature Candy',
              body:
                  'Knowledge is knowing that a tomato is a fruit.\nWisdom is knowing not to put it in a fruit salad.',
              image: buildImage('images/image11.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Fruits delivery\n at a snap',
              body:
                  'Live in each season as it passes:\nbreathe the air,drink the drink,taste the fruit. ',
              image: buildImage('images/image22.jpg'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('DONE',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('SKIP'),
          onSkip: () => goToHome(context),
          next: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => Homepage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBBDB),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
