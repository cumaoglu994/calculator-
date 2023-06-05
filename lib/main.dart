import 'package:flutter/material.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('31/05/2023   Mustafa Cuma'),
          backgroundColor: Colors.grey[400],
        ),
        body: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int fotoimage = 0;

  Expanded mybutton(int fotoimage) {
    return Expanded(child: Image.asset('images/$fotoimage.png'));
    /* ElevatedButton(
          child: Image.asset('images/$fotoimage.png'),
          onPressed: () {
            final assetsAudioPlayer = AssetsAudioPlayer();
            assetsAudioPlayer.open(Audio("assets/audios/1.mp3"));
          }),
    );*/
  }

  Padding myrow(
      int fotoimage1, int fotoimage2, int fotoimage3, int fotoimage4) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          mybutton(fotoimage1),
          const SizedBox(
            width: 15.0,
          ),
          mybutton(fotoimage2),
          const SizedBox(
            width: 15.0,
          ),
          mybutton(fotoimage3),
          const SizedBox(
            width: 15.0,
          ),
          mybutton(fotoimage4),
        ],
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          ' Nice we have a calculator ',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
        myrow(7, 8, 9, 10),
        myrow(4, 5, 6, 11),
        myrow(1, 2, 3, 12),
        myrow(15, 0, 14, 13),
        //  myrow(7),
      ],
    );
  }
}
