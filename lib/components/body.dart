// import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:flutter/material.dart';

// class Body extends StatelessWidget {
//   const Body({
//     Key? key,
//     required this.assetsAudioPlayer,
//     required this.audio,
//     required this.label,
//     required this.image,
//   }) : super(key: key);

//   final AssetsAudioPlayer assetsAudioPlayer;
//   final Audio audio;
//   final String label;
//   final Image image;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         margin: const EdgeInsets.all(30.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 width: 190,
//                 height: 190,
//                 decoration: BoxDecoration(
//                     boxShadow: const [
//                       BoxShadow(color: Colors.blueGrey, blurRadius: 26.0)
//                     ],
//                     shape: BoxShape.rectangle,
//                     borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                     color: Colors.purple[300]),
//                 child: TextButton(
//                     onPressed: () async {
//                       await assetsAudioPlayer.open(
//                         audio,
//                       );
//                     },
//                     child: image),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   margin: EdgeInsets.all(1.0),
//                   decoration: BoxDecoration(
//                       color: Colors.green[600], shape: BoxShape.circle),
//                   child: Icon(
//                     Icons.music_note_rounded,
//                     color: Colors.orange[200],
//                   ),
//                 ),
//                 Text(label)
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
