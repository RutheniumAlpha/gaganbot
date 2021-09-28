import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SoundsFromSpace extends StatefulWidget {
  @override
  _SoundsFromSpaceState createState() => _SoundsFromSpaceState();
}

class _SoundsFromSpaceState extends State<SoundsFromSpace> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      setState(() {});
    });
    player.positionStream.listen((event) async {
      if (player.duration != null) {
        if (player.duration!.inSeconds == player.position.inSeconds) {
          await player.seek(Duration(seconds: 0));
          await player.pause();
        }
      }
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    player.stop();
    super.dispose();
  }

  AudioPlayer player = AudioPlayer();
  List sounds = [
    {
      "Name": "Wind Of Mars",
      "URL":
          "https://static.wixstatic.com/mp3/0cb73c_f7a3334a65a142ebbf2c571c8adbd732.mp3",
      "Description":
          "UGDWyifygduyGFUOgfuydgfuwgeygfeuwgfUYECYVEFVYKwvKGHWVFKYAWVFKVGDSUKVKCVUVKCDVCUDVkyaVCAYKDVC",
      "Credit": "NASA",
      "Image": "mars",
    },
    {
      "Name": "Wind Of Earth",
      "URL":
          "https://static.wixstatic.com/mp3/0cb73c_f7a3334a65a142ebbf2c571c8adbd732.mp3",
      "Description":
          "UGDWyifygduyGFUOgfuydgfuwgeygfeuwgfUYECYVEFVYKwvKGHWVFKYAWVFKVGDSUKVKCVUVKCDVCUDVkyaVCAYKDVC",
      "Credit": "NASA",
      "Image": "earth",
    }
  ];
  int? selectedSound;
  @override
  Widget build(BuildContext context) {
    print(player.duration);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sounds From Space".toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey.shade800,
        elevation: 0,
        leading: IconButton(
            onPressed: () async {
              await player.pause();
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/background.jpg"))),
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(children: [
              player.duration != null
                  ? Image(
                      image: AssetImage(
                          "assets/images/${sounds[selectedSound!]["Image"]}.png"),
                      height: 100,
                    )
                  : SizedBox(),
              player.duration != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Slider(
                            value: double.parse(
                                player.position.inSeconds.toString()),
                            max: double.parse(
                                player.duration!.inSeconds.toString()),
                            min: 0,
                            onChanged: (value) {
                              player.seek(Duration(seconds: value.round()));
                            }),
                        Text(
                          player.duration!.inSeconds.toString() + " sec",
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {
                              if (player.playing) {
                                player.pause();
                              } else {
                                player.play();
                              }
                            },
                            icon: Icon(
                              player.playing ? Icons.pause : Icons.play_arrow,
                              color: Colors.white,
                            )),
                      ],
                    )
                  : SizedBox(),
              player.duration != null
                  ? Text(
                      sounds[selectedSound!]["Name"],
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )
                  : SizedBox(),
              player.duration != null
                  ? Text(
                      sounds[selectedSound!]["Description"],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    )
                  : SizedBox(),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Container(
                color: Colors.white,
                child: ListView.separated(
                  itemCount: sounds.length,
                  separatorBuilder: (context, count) {
                    return Divider(
                      height: 5,
                      thickness: 1,
                    );
                  },
                  itemBuilder: (context, count) {
                    return ListTile(
                        leading: Image(
                          image: AssetImage(
                              "assets/images/${sounds[count]["Image"]}.png"),
                          height: 50,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text(sounds[count]["Name"]),
                        subtitle: Text(sounds[count]["Credit"]),
                        onTap: () async {
                          setState(() {
                            selectedSound = count;
                          });
                          await player.setUrl(sounds[count]["URL"]);
                          await player.load();
                          setState(() {});
                          print(player.duration);
                          await player.play();
                          setState(() {});
                          setState(() {});
                        });
                  },
                ),
              ))
            ])),
      ),
    );
  }
}
