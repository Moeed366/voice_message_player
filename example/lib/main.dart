import 'package:flutter/material.dart';
import 'package:voice_message_player/src/voice_controller.dart';
import 'package:voice_message_player/src/voice_message_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: player(),
    );
  }
}

class player extends StatelessWidget {
  player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              VoiceMessagePlayer(
                controller: VoiceController(
                  audioSrc:
                      'https://dl.solahangs.com/Music/1403/02/H/128/Hiphopologist%20-%20Shakkak%20%28128%29.mp3',
                  maxDuration: const Duration(seconds: 10),
                  isFile: false,
                  onComplete: () {
                    /// do something on complete
                  },
                  onPause: () {
                    /// do something on pause
                  },
                  onPlaying: () {
                    /// do something on playing
                  },
                  onError: (err) {
                    /// do somethin on error
                  },
                ),
                innerPadding: 12,
                cornerRadius: 20,
              ),
              SizedBox(
                height: 20,
              ),
              VoiceMessagePlayer(
                controller: VoiceController(
                  audioSrc:
                      'https://cdn.pixabay.com/download/audio/2022/11/16/audio_a2b0a45199.mp3?filename=6-islamic-background-sounds-alfa-relaxing-music-126060.mp3',
                  maxDuration: const Duration(seconds: 10),
                  isFile: false,
                  onComplete: () {
                    /// do something on complete
                  },
                  onPause: () {
                    /// do something on pause
                  },
                  onPlaying: () {
                    /// do something on playing
                  },
                  onError: (err) {
                    /// do somethin on error
                  },
                ),
                innerPadding: 12,
                cornerRadius: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
