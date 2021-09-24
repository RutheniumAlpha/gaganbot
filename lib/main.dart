import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(fontFamily: "Jost"),
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
      body: Container(
          alignment: Alignment.topCenter,
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/homepagebackground.jpg"))),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/gaganBot.png"),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("assets/images/banner.png"))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Image(
                          height: 110,
                          fit: BoxFit.contain,
                          image: AssetImage(
                              "assets/images/buttons/solarSystem.png"),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Image(
                          height: 110,
                          fit: BoxFit.contain,
                          image: AssetImage(
                              "assets/images/buttons/spaceQuest.png"),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Image(
                          height: 110,
                          fit: BoxFit.contain,
                          image:
                              AssetImage("assets/images/buttons/spaceBase.png"),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Image(
                          height: 110,
                          fit: BoxFit.contain,
                          image:
                              AssetImage("assets/images/buttons/funSpace.png"),
                        ))
                  ],
                ),
              )
            ],
          )),
    );
  }
}

/*ListView(
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
                child: Text("How Far Is The Planet?")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SoundsFromSpace();
                  }));
                },
                child: Text("Sounds From Space")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Top5Elements();
                  }));
                },
                child: Text("Top 5 Elements In Space")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WhereIsISS();
                  }));
                },
                child: Text("Top 5 Elements In Space")),
          ],
        ), */
