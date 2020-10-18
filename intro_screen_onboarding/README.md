# intro_screen_onboarding_flutter

Flutter Intro Screen Onboarding is a flutter plugin that helps you make a cool intro for your app. Create intro has never been easier and faster

## Animation
<p>
<img src="https://media.giphy.com/media/gdMYc6jOoozhWNGSSL/giphy.gif?raw=true" align = "center" height = "650px">
</p>

<p>
<img src = "https://github.com/daturit/intro_screen_onboarding/blob/master/intro_screen_onboarding/intro1.png?raw=true" align = "center" height = "550px"/>
<img src = "https://github.com/daturit/intro_screen_onboarding/blob/master/intro_screen_onboarding/intro2.png?raw=true" align = "center" height = "550px"/>
<img src = "https://github.com/daturit/intro_screen_onboarding/blob/master/intro_screen_onboarding/intro3.png?raw=true" align = "center" height = "550px"/>
</p>

<p>
<img src="https://media.giphy.com/media/URpaxOK8hPxd6LLfWh/giphy.gif?raw=true" align = "center" height = "650px">
</p>

## Example Project

There is a example project in the `example` folder. Check it out. Otherwise, keep reading to get up and running.

## Usage

**Custom Numbers**

```dart
import 'package:flutter/material.dart';
import 'package:introscreenonboarding/intro_app.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Buy & Sell',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/images/onboarding3.png',
    ),
    Introduction(
      title: 'Delivery',
      subTitle: 'Your order will be immediately collected and',
      imageUrl: 'assets/images/onboarding4.png',
    ),
    Introduction(
      title: 'Receive Money',
      subTitle: 'Pick up delivery at your door and enjoy groceries',
      imageUrl: 'assets/images/onboarding5.png',
    ),
    Introduction(
      title: 'Finish',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/images/onboarding3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}

```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
