import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySplashScreen(),
    );
  }
}


class MySplashScreen extends StatelessWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 8,
      navigateAfterSeconds: HomeScreen(),
      title: Text('Hey, this is splash screen'),
      image: Image.network('https://logowik.com/content/uploads/images/flutter5786.jpg'),
      loadingText: Text('Your app is loading'),
      loaderColor: Colors.deepOrange,
      photoSize: 150,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen'),
      ),
      body: Center(
        child: Text('Hey, this is home screen'),
      ),
    );
  }
}








