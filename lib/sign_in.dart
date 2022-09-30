import 'dart:developer';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:application/components/input_with_error_text.dart';
import 'package:application/components/my_button.dart';
import 'package:application/components/my_text_input.dart';
import 'package:application/components/my_text_input_with_error_text.dart';
import 'package:application/home.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static const id = 'SignInScreen';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late AnimationController animationController;
  late Animation animation;
  InputWithErrorText _email = InputWithErrorText();
  InputWithErrorText _password = InputWithErrorText();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        actions: [
          Icon(
            Icons.favorite,
            color: Colors.red[700],
          )
        ],
        title: Center(
          child: Text(
            'SignIn',
            style: TextStyle(
                fontSize: 30, color: Colors.purple[50], fontFamily: "Light"),
          ),
        ),
        backgroundColor: Colors.indigo[500],
      ),
      body: ProgressHUD(
        child: Builder(
          builder: (BuildContext context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 100,
                        child: Hero(
                          tag: 'logo',
                          child: Image.asset('images/sleep.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: AnimatedTextKit(
                          animatedTexts: [
                            WavyAnimatedText('Sign-in',
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Light',
                                  color: Colors.blue[700],
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                MyTextInputWithErrorText(
                    input: _email,
                    hintText: 'Enter your email',
                    obscureText: false,
                    textInputType: TextInputType.text),
                MyTextInputWithErrorText(
                    input: _password,
                    hintText: 'Enter your password',
                    obscureText: true,
                    textInputType: TextInputType.text),
                MyButton(
                  text: 'Next',
                  onPressed: () async {
                    final progress = ProgressHUD.of(context);
                    progress?.showWithText('Loading...');
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _email.valueText,
                          password: _password.valueText);
//progress?.dismiss();
                      if (!mounted) return;
                      Navigator.pushNamed(context, Home.id);
                    } on FirebaseAuthException catch (e) {
//progress?.dismiss();
                      if (e.code == 'user-not-found') {
                        _email.errorText = 'No user found for that email.';
                      } else if (e.code == 'wrong-password') {
                        _password.errorText =
                            'Invalid password ${_password.errorText}';
                      } else {
                        log(e.toString());
                      }
                    }
                    setState(() {});
                    progress?.dismiss();
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
