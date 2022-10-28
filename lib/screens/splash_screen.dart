import 'package:books/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';



class SplashScreen extends StatelessWidget {
    const SplashScreen({Key? key}):super(key: key);


  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: HomeScreen(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "assets/book.png",
      text: "G Books",
      textType: TextType.ScaleAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );
  }
}