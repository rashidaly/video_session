import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'Screens/Welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: WelcomeScreen(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/images/video.png",
      text: "Video Session",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    );
  }
}
