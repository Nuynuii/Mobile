import 'dart:developer';
import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:application/components/my_button.dart';
import 'package:application/components/my_text_input.dart';
import 'package:application/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

class RegistryScreen extends StatefulWidget {
  static const id = 'RegistryScreen';
  const RegistryScreen({Key? key}) : super(key: key);

  @override
  State<RegistryScreen> createState() => _RegistryScreenState();
}

class _RegistryScreenState extends State<RegistryScreen> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  late AnimationController animationController;
  late Animation animation;

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
            'Registry',
            style: TextStyle(
                fontSize: 30, color: Colors.purple[50], fontFamily: "Light"),
          ),
        ),
        backgroundColor: Colors.indigo[500],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
              child: Row(
                children: [
                  SizedBox(
                    height: 100,
                    child: Hero(
                      tag: 'logo',
                      child: Image.asset(
                        'images/sleep.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText('Create a new account',
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
          ),
          const SizedBox(
            height: 20.0,
          ),
          // MyTextInput(
          //   hintText: 'Enter your username',
          //   onChanged: (value) {
          //     username = value;
          //   },
          // ),
          MyTextInput(
            hintText: 'Enter your email',
            onChanged: (value) {
              email = value;
            },
          ),
          MyTextInput(
            hintText: 'Enter your password',
            onChanged: (value) {
              password = value;
            },
          ),
          MyButton(
            text: 'Next',
            onPressed: () async {
              try {
                UserCredential userCredential =
                    await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                if (userCredential.user != null) {
                  if (!mounted) return;
                  Navigator.pushNamed(context, Home.id);
                }
              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  log('The password provider is to weak.');
                } else if (e.code == 'email-already-in-use') {
                  log('The account already exists for that email.');
                } else {
                  log(e.toString());
                }
              } catch (e) {
                log(e.toString());
              }
            },
          ),
        ],
      ),
    );
  }
}
