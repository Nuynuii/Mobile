import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:application/screens/main_screen.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatefulWidget {
  static const id = 'Home';
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  late AnimationController animationController;
  late Animation animation;
  User? user;
  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    // if (user!= null && !user.emailVerified) {
    //   await user.sendEmailVerification();
    // }
    if (user == null) {
      //Tod o: Throw error
    } else {
      log(user!.email.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
        leading: null,
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              if (!mounted) return;
              Navigator.popAndPushNamed(context, MainScreen.id);
            },
            icon: const Icon(Icons.close),
          ),
        ],
        title: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('RAIN SOUND',
                  textStyle: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Light',
                    color: Colors.orange[50],
                  ))
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/fong.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa1.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa2.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa3.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa4.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa5.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa1.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa2.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa3.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa4.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa5.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa1.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa2.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa3.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa4.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa5.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa1.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa2.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa3.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa4.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 220.0,
                  child: Card(
                    child: Wrap(
                      children: const <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/baa5.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(
                      Icons.music_note_rounded,
                      size: 30,
                      color: Colors.pink[200],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/sheep.wav"),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          //สิ้นสุดแกะ

          SizedBox(
            height: 16,
          ),

          Container(
            padding: EdgeInsets.only(left: 32, right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "PLAYLIST",
                      style: TextStyle(
                          color: Colors.green[600],
                          fontFamily: 'Patrick',
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Playlist name",
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontFamily: 'Patrick',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                          fontSize: 22),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // SizedBox(
          //   height: 16,
          // ),

          // เริ่มเพลง
          //1
          Card(
            child: Container(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                      size: 30,
                      color: Colors.blue[600],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/mixkit.wav"),
                      );
                    },
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "พายุฝนฟ้าคะนองที่สงบในป่า",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'mali',
                              fontSize: 10,
                              letterSpacing: 0.5),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Calm thunderstorm in the jungle",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: 'Patrick',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.5,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.pause_rounded,
                      color: Colors.red,
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.pause();
                    },
                  ),
                ],
              ),
            ),
          ),

          //2

          Card(
            child: Container(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                      size: 30,
                      color: Colors.blue[600],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/birds.wav"),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "ฝนตกในป่าและเสียงนก",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'mali',
                              fontSize: 10,
                              letterSpacing: 0.5),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Rain in the jungle and birds",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: 'Patrick',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.5,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.pause_rounded,
                      color: Colors.red,
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.pause();
                    },
                  ),
                ],
              ),
            ),
          ),

          //3

          Card(
            child: Container(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                      size: 30,
                      color: Colors.blue[600],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/rain.wav"),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "สายฝนโปรยปราย",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'mali',
                              fontSize: 10,
                              letterSpacing: 0.5),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Intense rain loop",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: 'Patrick',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.5,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.pause_rounded,
                      color: Colors.red,
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.pause();
                    },
                  ),
                ],
              ),
            ),
          ),

          //4

          Card(
            child: Container(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                      size: 30,
                      color: Colors.blue[600],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/rain2.wav"),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "ฝนตกกระทบพื้น",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'mali',
                              fontSize: 10,
                              letterSpacing: 0.5),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "droplets hitting the ground",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: 'Patrick',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.5,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.pause_rounded,
                      color: Colors.red,
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.pause();
                    },
                  ),
                ],
              ),
            ),
          ),

          //5

          Card(
            child: Container(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                      size: 30,
                      color: Colors.blue[600],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/rain3.wav"),
                      );
                    },
                  ),

                  const SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "ฝนตกลงบนไม้",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'mali',
                              fontSize: 10,
                              letterSpacing: 0.5),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Tropical rain storm",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: 'Patrick',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.5,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.pause_rounded,
                      color: Colors.red,
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.pause();
                    },
                  ),
                  // const Text("03:02",
                  //     style: TextStyle(
                  //         color: Colors.grey,
                  //         fontFamily: 'Patrick',
                  //         fontWeight: FontWeight.w900,
                  //         letterSpacing: 0.5)),
                ],
              ),
            ),
          ),

          // 6
          Card(
            child: Container(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                      size: 30,
                      color: Colors.blue[600],
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.open(
                        Audio("assets/sounds/rain4.wav"),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "ฝนตกบนร่ม",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'mali',
                              fontSize: 10,
                              letterSpacing: 0.5),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Rain on umbrella",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: 'Patrick',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.5,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.pause_rounded,
                      color: Colors.red,
                    ),
                    onPressed: () async {
                      await assetsAudioPlayer.pause();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ), //Con,tainer for song name
    );
  }
}
