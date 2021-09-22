import 'package:atl_space_challenge_project/howFarIsThePlanet.dart';
import 'package:atl_space_challenge_project/weigthDifferentPlanets.dart';
import 'package:atl_space_challenge_project/whoIsBigger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(fontFamily: "Orbitron"),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WeigthDifferentPlanets();
                }));
              },
              child: Text("My Weigth In Different Planets")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WhoIsBigger();
                }));
              },
              child: Text("Who Is Bigger?")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HowFarIsThePlanet();
                }));
              },
              child: Text("How Far Is The Planet?"))
        ],
      ),
    );
  }
}
