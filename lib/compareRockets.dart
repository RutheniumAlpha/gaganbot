import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class CompareRockets extends StatefulWidget {
  @override
  _CompareRocketsState createState() => _CompareRocketsState();
}

class _CompareRocketsState extends State<CompareRockets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Compare Rockets".toUpperCase(),
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blueGrey.shade800,
          elevation: 0,
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/background.jpg"))),
            child: Column(
              children: [
                InteractiveViewer(
                  child: WebViewX(
                    height: 220,
                    width: double.infinity,
                    initialContent:
                        '<iframe width="${MediaQuery.of(context).size.width - 15}" height="200" src="https://www.youtube.com/embed/_qH2hI9GwFQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
                    initialSourceType: SourceType.html,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Video Source: Stanley Create, YouTube",
                    style: TextStyle(
                        fontSize: 18, color: Colors.grey.withOpacity(0.9)),
                  ),
                ),
              ],
            )));
  }
}
