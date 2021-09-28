import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';
import 'package:youtube_plyr_iframe/youtube_plyr_iframe.dart';

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
        body: InteractiveViewer(
          child: WebViewX(
            height: double.infinity,
            width: double.infinity,
            initialContent:
                '<iframe width="${MediaQuery.of(context).size.width - 20}" height="200" src="https://www.youtube.com/embed/_qH2hI9GwFQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            initialSourceType: SourceType.html,
          ),
        ));
  }
}
