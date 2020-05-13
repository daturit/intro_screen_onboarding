

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'circle_progress_bar.dart';
import 'introduction.dart';

/// A IntroScreen Class.

class IntroScreenOnboarding extends StatefulWidget {
  final List<Introduction> introductionList;

  /// Callback on Skip Button Pressed
  final Function onTapSkipButton;

  IntroScreenOnboarding({Key key, this.introductionList, this.onTapSkipButton})
      : super(key: key);

  @override
  _IntroScreenOnboardingState createState() => _IntroScreenOnboardingState();
}

class _IntroScreenOnboardingState extends State<IntroScreenOnboarding> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  double progressPercent = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: FlatButton(
                        onPressed: () {
                          //print('skip');
                          widget.onTapSkipButton();
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    height: 550.0,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: widget.introductionList,
                    ),
                  ),
                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: _buildPageIndicator(),
//                ),
                _customProgress(),
                //_buildNextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

//  Widget _buildNextButton() {
//    return (_currentPage != widget.introductionList.length - 1
//        ? Expanded(
//      child: Align(
//        alignment: FractionalOffset.bottomRight,
//        child: FlatButton(
//          onPressed: () {
//            _pageController.nextPage(
//              duration: Duration(milliseconds: 500),
//              curve: Curves.ease,
//            );
//          },
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            mainAxisSize: MainAxisSize.min,
//            children: <Widget>[
////                    Text(
////                      'Next',
////                      style: TextStyle(
////                        color: Colors.black,
////                        fontSize: 22.0,
////                      ),
////                    ),
//            ],
//          ),
//        ),
//      ),
//    )
//        : Expanded(
//      child: Align(
//        alignment: FractionalOffset.bottomRight,
//        child: FlatButton(
//          onPressed: () {
//            print('Start');
//          },
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            mainAxisSize: MainAxisSize.min,
//            children: <Widget>[
////                    Text(
////                      'Start',
////                      style: TextStyle(
////                        color: Colors.black,
////                        fontSize: 22.0,
////                      ),
////                    ),
//            ],
//          ),
//        ),
//      ),
//    ));
//  }

//  Widget _indicator(bool isActive) {
//    return AnimatedContainer(
//      duration: Duration(milliseconds: 150),
//      margin: EdgeInsets.symmetric(horizontal: 8.0),
//      height: 8.0,
//      width: isActive ? 24 : 16,
//      decoration: BoxDecoration(
//        color: isActive ? Color(0xFF7B51D3) : Colors.grey,
//        borderRadius: BorderRadius.all(Radius.circular(10)),
//      ),
//    );
//  }

//  List<Widget> _buildPageIndicator() {
//    List<Widget> list = [];
//    for (int i = 0; i < widget.introductionList.length; i++) {
//      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
//    }
//    return list;
//  }

  Widget _customProgress() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          child: CircleProgressBar(
            backgroundColor: Colors.white,
            foregroundColor: Color(0xFF7B51D3),
            value: ((_currentPage + 1) * 1.0 / widget.introductionList.length),
          ),
        ),
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF7B51D3),
          ),
          child: IconButton(
            onPressed: () {
              _currentPage != widget.introductionList.length - 1
                  ? _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    )
                  : widget.onTapSkipButton();
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            iconSize: 15,
          ),
        )
      ],
    );
  }
}
