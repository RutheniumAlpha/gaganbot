import 'package:atl_space_challenge_project/howFarIsThePlanet.dart';
import 'package:atl_space_challenge_project/top5elements.dart';
import 'package:atl_space_challenge_project/weigthDifferentPlanets.dart';
import 'package:atl_space_challenge_project/whoIsBigger.dart';
import 'package:flutter/material.dart';

class SolarSystem extends StatefulWidget {
  @override
  _SolarSystemState createState() => _SolarSystemState();
}

class _SolarSystemState extends State<SolarSystem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/homepagebackground.jpg"))),
        child: Column(
          children: [
            Image.asset(
              "assets/images/subPageBackgroundIcon.png",
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  children: [
                    createButton(
                        MaterialPageRoute(
                            builder: (context) => WeigthDifferentPlanets()),
                        "Weight Checker",
                        context),
                    createButton(
                        MaterialPageRoute(builder: (context) => WhoIsBigger()),
                        "Who Is Bigger",
                        context),
                    createButton(
                        MaterialPageRoute(builder: (context) => Top5Elements()),
                        "Planet Composition",
                        context),
                    createButton(
                        MaterialPageRoute(
                            builder: (context) => HowFarIsThePlanet()),
                        "Feel The Distance",
                        context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget createButton(
    MaterialPageRoute route, String name, BuildContext context) {
  return TextButton(
      onPressed: () {
        Navigator.push(context, route);
      },
      child: Card(
        color: Colors.white.withOpacity(0.4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 10,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            name,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 3),
          ),
          height: 60,
          width: double.infinity,
        ),
      ));
}
