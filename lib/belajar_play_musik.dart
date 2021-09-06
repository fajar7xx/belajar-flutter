import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(BelajarAudioPlayer());

class BelajarAudioPlayer extends StatefulWidget {
  // const BelajarAudioPlayer({ Key? key }) : super(key: key);

  @override
  _BelajarAudioPlayerState createState() => _BelajarAudioPlayerState();
}

class _BelajarAudioPlayerState extends State<BelajarAudioPlayer> {
  //menampung audio player
  AudioPlayer audioPlayer;

  // variable untuk menampung lama pemutaran musik
  String durasi = "00:00:00";

  //constructor
  _BelajarAudioPlayerState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
      audioPlayer.setReleaseMode(ReleaseMode.LOOP);
    });
  }

  // buat 4 fungsi
  void playSong(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSong() async {
    await audioPlayer.pause();
  }

  void stopSong() async {
    await audioPlayer.stop();
  }

  void resumeSong() async {
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Playing Music"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  playSong(
                      "https://cf-media.sndcdn.com/VPJXMudK7H5X.128.mp3?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiKjovL2NmLW1lZGlhLnNuZGNkbi5jb20vVlBKWE11ZEs3SDVYLjEyOC5tcDMqIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNjMwODk5ODgxfX19XX0_&Signature=VdlKpgK8dA7EXT-FgMYGD9Oq5kVb5QpQ7nBc2qgdmsDPXPiWFV8zXD8553B-nV1RFcLNEq4TGOV7ixVpNEBDTWCyKvPPa2glamOWtKwEMOUeLhFO8xpyIZOw~w7ryAsHTiu-LuKNg2KbEeS~FzRg22yOwelw9wSwlb-Q5tQJq59MkDhgqb33quXU693Ol789tVMoDtQLFNOFpGOyGbEy0KSEUa5y1ualHNBORTV2CFIeyL9z5XMUMzAKUJIUSZtOqZ6fo8GXT3PsXwYf4OH62NMkOmFmhnjyGENYUw774nGXYifkGlxpHWRh74HYs~spOnxzNE8jmdmyLtWHl5vhUw__&Key-Pair-Id=APKAI6TU7MMXM5DG6EPQ");
                },
                child: Text("Play"),
              ),
              RaisedButton(
                onPressed: () {
                  pauseSong();
                },
                child: Text("Pause"),
              ),
              RaisedButton(
                onPressed: () {
                  stopSong();
                },
                child: Text("Stop"),
              ),
              RaisedButton(
                onPressed: () {
                  resumeSong();
                },
                child: Text("Resume"),
              ),
              Text(
                durasi,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
