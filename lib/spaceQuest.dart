import 'package:atl_space_challenge_project/soundsFromSpace.dart';
import 'package:atl_space_challenge_project/starSizeComparison.dart';
import 'package:flutter/material.dart';

class SpaceQuest extends StatefulWidget {
  @override
  _SpaceQuestState createState() => _SpaceQuestState();
}

class _SpaceQuestState extends State<SpaceQuest> {
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
              "assets/images/galaxy.png",
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  children: [
                    createButton(
                      MaterialPageRoute(
                          builder: (context) => SoundsFromSpace()),
                      "Sounds From Space",
                    ),
                    createButton(
                      MaterialPageRoute(
                          builder: (context) => UniverseSizeComparison()),
                      "Star Size Comparison",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createButton(MaterialPageRoute route, String name) {
    return TextButton(
        onPressed: () {
          Navigator.push(context, route);
        },
        child: Card(
          color: Colors.white.withOpacity(0.4),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
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
}
