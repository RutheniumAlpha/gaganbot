import 'package:atl_space_challenge_project/spaceQuiz.dart';
import 'package:atl_space_challenge_project/whereIsISS.dart';
import 'package:flutter/material.dart';

class FunSpace extends StatefulWidget {
  @override
  _FunSpaceState createState() => _FunSpaceState();
}

class _FunSpaceState extends State<FunSpace> {
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
              "assets/images/satlight.png",
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  children: [
                    createButton(
                        MaterialPageRoute(builder: (context) => WhereIsISS()),
                        "Track The Station",
                        context),
                    createButton(
                        MaterialPageRoute(builder: (context) => QuizHomePage()),
                        "Gagan Quiz",
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
