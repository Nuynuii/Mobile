import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:application/components/navigator_button.dart';
import 'package:application/registry_screen.dart';
import 'package:application/sign_in.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const id = 'MainScreen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  // late Animation animationColor;
  late AnimationController animationController;
  late Animation animation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
        title: Icon(
          Icons.dark_mode,
          color: Colors.orange[100],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: Hero(
              tag: 'logo',
              child: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[100]), //BoxDecoration

                    child: Image.asset(
                      'images/rain.png',
                      height: 200,
                    )),
              ),
            ),
          ),
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('RAINY',
                    textStyle: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Light',
                      color: Colors.blue[700],
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const NavigatorButton(
            text: 'Sign-in',
            navigatorNamed: SignInScreen.id,
          ),
          const NavigatorButton(
            text: 'Sign-up',
            navigatorNamed: RegistryScreen.id,
          ),
        ],
      ),
    );
  }
}
