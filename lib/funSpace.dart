import 'package:atl_space_challenge_project/compareRockets.dart';
import 'package:atl_space_challenge_project/howFastYouSpin.dart';
import 'package:atl_space_challenge_project/simulations.dart';
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
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WhereIsISS()));
                        },
                        child: Card(
                          color: Colors.white.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          elevation: 10,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Track The Station",
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
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizHomePage()),
                          );
                        },
                        child: Card(
                          color: Colors.white.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          elevation: 10,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Gagan Quiz",
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
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HowFastYouSpin()),
                          );
                        },
                        child: Card(
                          color: Colors.white.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          elevation: 10,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "How Fast You Spin",
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
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CompareRockets()),
                          );
                        },
                        child: Card(
                          color: Colors.white.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          elevation: 10,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Compare Rockets",
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
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Simulations()),
                          );
                        },
                        child: Card(
                          color: Colors.white.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          elevation: 10,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Simulations",
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
                        )),
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
