import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/smear-loader.json'),
      // Column(
      //   children: [
      //     Image.asset('assets/logo-united1.png'),
      //     SizedBox(height: 10),
      //     const Text(
      //       'Man United',
      //       style: TextStyle(
      //         fontSize: 30,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ],
      // ),
      backgroundColor: Colors.black,
      nextScreen: const Home(),
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: Duration(seconds: 1),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            textStyle: TextStyle(fontSize: 24),
          ),
          child: Text('Open Sheet'),
          onPressed: showSheet,
        ),
      ),
    );
  }

  Future showSheet() {
    return showSlidingBottomSheet(
      context,
      builder: (context) => SlidingSheetDialog(
        snapSpec: SnapSpec(
          snappings: [0.4, 0.8],
        ),
        builder: buildSheet,
      ),
    );
  }

  Widget buildSheet(context, state) {
    return Material(
      child: ListView(
        shrinkWrap: true,
        primary: false,
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Bottom Sheet for doing something after widget is built.However after updating flutter this error occursBottom Sheet for doing something after widget is built.However after updating flutter this error occurs',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Bottom Sheet for doing something after widget is built.However after updating flutter this error occursBottom Sheet for doing something after widget is built.However after updating flutter this error occurs',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Bottom Sheet for doing something after widget is built.However after updating flutter this error occursBottom Sheet for doing something after widget is built.However after updating flutter this error occurs',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Bottom Sheet for doing something after widget is built.However after updating flutter this error occursBottom Sheet for doing something after widget is built.However after updating flutter this error occurs',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Bottom Sheet for doing something after widget is built.However after updating flutter this error occursBottom Sheet for doing something after widget is built.However after updating flutter this error occurs',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
