# intro_screen_onboarding
Flutter Intro Screen Onboarding is a flutter plugin that helps you make a cool intro for your app. Create intro has never been easier and faster

# Show some ❤️ and star the repo to support the project

# Usage 
To use this package :
add the dependency to your pubspec.yaml file.

dependencies:
    flutter:
      sdk: flutter
    intro_screen_onboarding:
    
 
# How to use

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
    return IntroScreenOnboarding(introductionList: list, onTapSkipButton: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ), //MaterialPageRoute
      );
    },);
  }
}

# Pull Requests
I welcome and encourage all pull requests. It usually will take me within 24-48 hours to respond to any issue or request.

# Created & Maintained By
tuanla.khtn@gmail.com

# License
Intro_screen_onboarding is licensed under MIT license.
